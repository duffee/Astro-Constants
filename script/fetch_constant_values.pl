#!/usr/bin/perl -w
#
# Checks the online sources for the values of the constants
# Boyd Duffee, Mar 2020
#
# hard coded to run from top directory and uses only data/PhysicalConstants.xml
#
# nice regex for base_units in extract_value()

use v5.20; # postfix deref
use autodie;
use Data::Dumper;
use FindBin qw($Bin);
use Mojo::URL;
use Mojo::UserAgent;
use List::Util qw/shuffle/;
use XML::LibXML;

#die "Usage: $0 infile outfile" unless @ARGV == 1;

my $TESTING = 1;
my $ONLINE = 1;
my $SLEEP = 0;


my $ua = Mojo::UserAgent->new;
$ua->max_redirects(2);

my ($n, @values_parsed, @uncertainties_parsed, );
my ($td_flag, $font_flag, $text_flag, $uncertainty_flag) = 0;

my $xml = XML::LibXML->load_xml(location => "$Bin/../data/PhysicalConstants.xml");

=pod

my $nist_parser = HTML::Parser->new(
	start_h => [\&start_nist, "self, tagname, attr"],
	end_h => [\&end_nist, "tagname, attr"],
	text_h => [\&text, "text"],
);
=cut

configure_parsers();

for my $constant ( $xml->getElementsByTagName('PhysicalConstant') ) {
	my ($long_name, $old_value, ) = undef;

	my $name = $constant->getChildrenByTagName('name')->shift->textContent();

	my $description = $constant->getChildrenByTagName('description')->shift()->textContent();
	for my $value ( $constant->getChildrenByTagName('value') ) {
		if ( $value->hasAttribute('system') ) {
			$old_value = $value->textContent() if $value->getAttribute('system') eq 'MKS';
		}
		else {
			$old_value = $value->textContent();
			next;
		}
		$old_value =~ tr/_//;
	}

	my $precision = $constant->getChildrenByTagName('uncertainty')->shift();
	my $precision_type = $precision->getAttribute('type');
	$precision = $precision->textContent();
	my $source = $constant->getChildrenByTagName('source')->shift();
	my $source_url = $source->getAttribute('url');

	say <<CONST;
$name\t$old_value\t$precision\t$precision_type
$description
$source_url
CONST
	next unless $source_url =~ /physics\.nist\.gov/;
	next if $source_url =~ /wikipedia|jupiterfact/;

	print "Fetch page? [Ynq] ";
	my $ans = <STDIN>;
	next if $ans =~ /n/i;
	last if $ans =~ /q/i;

	my ($new_value, $new_uncertainty) = get_constant_value($source);
	if ( ! defined $new_value ) {
		warn "Couldn't get value for $name from $source_url";
	}
	elsif ( $new_value == $old_value ) {
			say "\n==== No change ====\n";
	}
	else {
        $new_uncertainty //= '';
		print <<"E";
UPDATE: $old_value \t($precision)
    TO: $new_value \t($new_uncertainty)
E
	}
	last if $TESTING && $TESTING <= ++$n;
	sleep $SLEEP if $SLEEP;
}


exit;

####

sub get_constant_value {
	my ($source) = @_;
	(@values_parsed, @uncertainties_parsed ) = ();

	my $url = $source->getAttribute('url');
	my $selector = $source->getAttribute('selector');
	if ( $url =~ /\.pdf$/ ) {
		warn "Can't scrape PDF documents yet\n";
		return;
	}
	say "Getting $url";
	return 0 unless $ONLINE;
	my $tx = $ua->get($url);
	return unless $tx;

	if ( $url =~ /oeis\.org/ ) {
		my ($value) = $tx->content =~ /\%e \s \w+ \s (\d+\.?\d*)/x;
		print /(\%e.+)/ if /\%e/ && $TESTING;
		return $value;
	}
	elsif ( $url =~ /nist\.gov/ ) {
		my $parsed = mojo_parse($tx->result);
		return extract_value( $parsed->{data}{'Numerical value'} ),
			extract_value( $parsed->{data}{'Relative standard uncertainty'} );
			#extract_value( $parsed->{data}{'Standard uncertainty'} );
	}
	else {
		print $tx->result;
	}
}

sub start_nist {
	my ($self, $tag, $attr) = @_;
	$td_flag = 1 if $tag eq 'td';
	$font_flag = 1 if $tag eq 'font';
	return unless $td_flag && $font_flag;
	return if $font_flag && ! $attr->{color} || $attr->{color} ne 'red';
	$text_flag = 1;
}

sub end_nist {
	my ($tag) = @_;
	if ($tag eq 'tr') {
		$uncertainty_flag = 0;
	}
	return unless $tag eq 'td' || $tag eq 'font';
	$td_flag = 0 if $tag eq 'font';
	$font_flag = 0 if $tag eq 'font';
	$text_flag = 0;
}

sub text {
	my ($text, $attr) = @_;
	if ($text_flag) {
		push @values_parsed, $text;
		say "I found $text" if $TESTING;
	}
	if ($uncertainty_flag) {
		push @uncertainties_parsed, $text;
	}
	elsif (@values_parsed && $text =~ /Relative standard uncertainty/) {
		$uncertainty_flag = 1;
	}
	if ($uncertainty_flag) {
		say "TG: $text";
	}
}

sub configure_parsers {
	#$nist_parser->ignore_tags('tt', 'b', 'sup');
}

sub extract_value {
	my $string = shift;

    my $base_unit_re = qr/(?:m|fm|s|kg|mol|cd|eV|MeV|MeV\/c|GeV|ohm|sr|u|A|C|E_h|F|Hz|MHz|K|J|N|Pa|S|T|V|W|Wb) (?:-?\d)?/x;
	my ($digits, $power, $units) = $string =~ /([-\d.\x{a0}]+)
                                           (?:\s* x \x{a0}* 10(\S*)? )?
                                           (\s+ $base_unit_re (?:\s* $base_unit_re)* )?/x;
	$power //= ''; $units //= '';
	print "From $string I get $digits, $power, $units, " if $TESTING;

	if ( $string eq '(exact)' ) {
		say "Returning 0" if $TESTING;
		say "exact value";
		return 0;
	}
	elsif ( $digits && $digits =~ s/x10// ) {
		my $scinotation = join 'e', $digits, $power;
		say "Extracting $scinotation" if $TESTING;
		return $scinotation;
	}
	else {
        return unless $digits;
		say "Extracting $digits" if $TESTING;
	    $digits =~ s/\.{3,}//;	# remove ellipsis pertaining to irrational values
	    $digits =~ s/\s+//g;	# remove nbsp \x{a0}
		$digits =~ s/^(-?\d+\.?\d*).*/$1/;	# removed units for non-scinotation
        $digits .= "e$power" if $power;
		return $digits;
	}
}

sub mojo_parse {
    my $r = shift;

    my $page = Mojo::DOM->new( $r->dom );
    my $tables = $page->find('table')->to_array;
    my $td = $tables->[3]->find('td')->map('all_text')->grep(qr/\w/)->to_array;
    shift @$td if $td->[0] eq 'Click symbol for equation'; # remove this entry

    my ($name) = $td->[0] =~ /^\s*(.+)\s*$/;
    my %data = map { s/^\s*//; s/\s*$//; $_ } $td->@[1 .. 8];
    my ($source) = $td->[10] =~ /Source: (.+)/;
    say "Source: $source" if $TESTING;
    return {name => $name, source => $source, data => \%data};
}
