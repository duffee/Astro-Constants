#!/usr/bin/env perl
#
# takes a list of xml data files and creates a module providing constants
#
# options:
#   -o output filename
#   -s sort order the constants
#   -t output raku (or use other language templates)

use v5.20;
use Carp;
use Data::Dumper;
use FindBin qw($Dir);
use Getopt::Long;
use Module::Util qw(is_valid_module_name module_path);
use Mojo::Template;
use XML::LibXML;

my $name = 'Astro::Constants';
my $template = 'perl';

GetOptions(
    'help|?'       => \my $help,
    'name|n=s'     => \$name,
    'output|o=s'   => \my $output,
    'sort|s'       => \my $sort,
    'template|t=s' => \$template,
    'verbose|s'    => \my $verbose,
);

if ($help) {
    print show_usage();
    exit;
}

die "No files given\n\t", show_usage() unless @ARGV;
die "Invalid module name $name" unless is_valid_module_name($name);

# TODO - implement options
warn "sort not in use" if $sort;
warn "verbose not in use" if $verbose;
$output ||= join '/', $Dir, qw(.. lib), module_path($name);

my %t = get_templates($template);
my $mt = Mojo::Template->new;
my $reference_standard = 'NIST';

my (@constants, $tagname, %precision, $processed, );

for my $datafile ( @ARGV ) {
    unless (-e $datafile) {
        warn "File $datafile does not exist";
        next;
    }
    my $xml = XML::LibXML->load_xml(location => $datafile);
    $reference_standard = $xml->getElementsByTagName('reference_standard');

    for my $element ( $xml->getElementsByTagName('PhysicalConstant') ) {
        my $constant = extract_constant($element);
        next unless $constant->{name};

        push @constants, $constant;
	    push @{$tagname->{all}}, $constant->{name};

	    for my $category ( $constant->{categories}->@* ) {
		    push @{$tagname->{$category}}, $constant->{name};
		    push @{$tagname->{$category}}, $constant->{alternates}->@*
                if exists $constant->{alternates};
	    }
	}
}

#### transform constants to desired output
if ( $template eq 'raku' ) { names_to_raku( @constants ); }

#### output module templates
open my $fh, '>', $output or die "Couldn't write to $output: $!\n";

# TODO do the loops in the templates
say $fh $mt->render_file($t{module_header}, $name, $reference_standard);
for my $constant ( @constants ) {
    print $fh $mt->render_file($t{constant_code}, $constant);
}
say $fh $mt->render_file($t{module_middle}, %precision, %precision);
for my $constant ( @constants ) {
    print $fh $mt->render_file($t{constant_docs}, $constant);
}
# TODO add =cut to finish POD
print $fh $mt->render_file($t{module_footer}, $tagname );

=pod

TODO write precision values into module available for the precision() sub
my %precision;
sub store_precision {
	my ($name, $precision, $type) = @_;

	if ($type eq 'defined') {
		$type = 'relative';
		$precision = 0;
	}
	$precision{$name}->{value} = $precision;
	$precision{$name}->{type} = $type;
}

sub write_precision {
	my ($fh) = @_;

	say $fh 'my %_precision = (';
	for my $name (sort keys %precision) {
		my ($value, $type) = @{$precision{$name}}{qw(value type)};
		say $fh "\t$name \t=> {value => $value, \ttype => '$type'},";
	}
	say $fh ');';
}

=cut

exit;

sub get_templates {
# TODO move templates to files in /templates and store filenames in %template
    my $style = shift;

    my %template = (
        perl => {
            module_header => "$Dir/templates/module_header.ep",
            module_middle => "$Dir/templates/module_middle.ep",
            module_footer => "$Dir/templates/module_footer.ep",
            constant_code => "$Dir/templates/constant_code.ep",
            constant_docs => "$Dir/templates/constant_docs.ep",
        },

#### TODO inherit common template from perl files
        raku => {
            constant_code => "$Dir/templates/raku_code.ep",
        },
    );

    unless (exists $template{$style}) {
        carp "No templates available for $style. Using default 'perl'\n";
        $style = 'perl';
    }

    return $template{$style}->%*;
}

sub show_usage {
    return "Usage: $0 [hnostv] xml_file(s)\n";
}

sub store_precision {
	my ($name, $precision, $type) = @_;

	if ($type eq 'defined') {
		$type = 'relative';
		$precision = 0;
	}
	$precision{$name}->{value} = $precision;
	$precision{$name}->{type} = $type;
}

sub extract_constant {
    my $element = shift;

	my $name        = $element->getChildrenByTagName('name')->shift()->textContent();
    my $description = $element->getChildrenByTagName('description')->shift()->textContent();
    chomp $description;

    my $constant = {
        name        => $name,
        value       => $element->getChildrenByTagName('value')->shift()->textContent(),
        description => $description,
    };

	# recognise that there can be more than one alternateName
	my $alternate = undef;
	my @alternates = ();
	if ( $element->getChildrenByTagName('alternateName') ) {
		for my $node ( $element->getChildrenByTagName('alternateName') ) {
			$alternate = $node->textContent();
			next unless $alternate =~ /\S/;

			push @{$tagname->{alternates}}, $alternate;
			if ($node->hasAttribute('type') && $node->getAttribute('type') eq 'deprecated') {
				push @{$tagname->{deprecated}}, $alternate;
			}
			else {
				push @{$tagname->{all}}, $alternate;
			}
			push @alternates, $alternate;
		}
	}
	$constant->{alternates} = \@alternates if @alternates;
	$constant->{deprecated} = 1 if $element->getChildrenByTagName('deprecated');

    my @categories;
    for my $cat_node ( $element->getElementsByTagName('category') ) {
		my $category =	$cat_node->textContent();
		next unless $category;
		push @categories, $category;
	}
    $constant->{categories} = \@categories if @categories;

	my $precision = $element->getChildrenByTagName('uncertainty')->shift();
	store_precision($name,
		$precision->textContent(),
		$precision->getAttribute('type'));

    return $constant;
}

sub names_to_raku {
# converts names in screaming snake case to kebab case
    for my $c ( @_ ) {
        $c->{name} = lc $c->{name} =~ tr/_/-/;
        $c->{alternates}->@* = map { tr/_/-/; lc } $c->{alternates}->@*;
    }
}
