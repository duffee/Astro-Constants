#!/usr/bin/perl -w
#
# builds the Astro::Constants modules from an xml definition file
# Boyd Duffee, Dec 2015
#
# hard coded to run from top directory and uses only data/PhysicalConstants.xml

use strict;
use autodie;
use Modern::Perl;
use XML::LibXML;

#die "Usage: $0 infile outfile" unless @ARGV == 1;

my (@long, @short, );

my $xml = XML::LibXML->load_xml(location => 'data/PhysicalConstants.xml');

my $lib = 'lib';	# where is the lib directory
mkdir "$lib/Astro/Constants" unless -d "$lib/Astro/Constants";
open my $ac_fh, '>', "$lib/Astro/Constants.pm";
open my $mks_fh, '>', "$lib/Astro/Constants/MKS.pm";
open my $cgs_fh, '>', "$lib/Astro/Constants/CGS.pm";

write_module_header($ac_fh, 'Astro::Constants');
write_module_header($mks_fh, 'Astro::Constants::MKS');
write_module_header($cgs_fh, 'Astro::Constants::CGS');

for my $constant ( $xml->getElementsByTagName('PhysicalConstant') ) {
	my ($short_name, $long_name, $mks_value, $cgs_value, $values, ) = undef;

	for my $name ( $constant->getChildrenByTagName('name') ) {
		$short_name = $name->textContent() if $name->getAttribute('type') eq 'short';
		$long_name = $name->textContent() if $name->getAttribute('type') eq 'long';
	}

	my $description = $constant->getChildrenByTagName('description')->shift()->textContent();
	for my $value ( $constant->getChildrenByTagName('value') ) {
		if ( $value->hasAttribute('system') ) {
			$values->{mks} = $value->textContent() if $value->getAttribute('system') eq 'MKS';
			$values->{cgs} = $value->textContent() if $value->getAttribute('system') eq 'CGS';
		}
		else {
			$values->{value} = $value->textContent();
			next;
		}
	}


	write_method_pod($ac_fh, $long_name, $short_name, $description, $values);
	write_constant($mks_fh, ($values->{mks} || $values->{value}), $long_name, $short_name) 
			if $values->{mks} || $values->{value};
	write_constant($cgs_fh, ($values->{cgs} || $values->{value}), $long_name, $short_name) 
			if $values->{cgs} || $values->{value};


	push @long, $long_name if $long_name;
	push @short, $short_name if $short_name;
		
	if ( my $alternate = $constant->getChildrenByTagName('alternateName')->shift()->textContent() ) {
		push @long, $alternate;
		write_constant($mks_fh, ($values->{mks} || $values->{value}), $alternate) if $values->{mks} || $values->{value};
		write_constant($cgs_fh, ($values->{cgs} || $values->{value}), $alternate) if $values->{cgs} || $values->{value};
	}
}

say $ac_fh "\n'Perl is my Igor';";
write_module_footer($mks_fh, \@long, \@short);
write_module_footer($cgs_fh, \@long, \@short);

exit;

####

sub write_module_header {
	my ($fh, $name) = @_;

	print $fh <<HEADER;
package $name;
# ABSTRACT: this library provides physical constants for use in Astronomy

use strict;
use warnings;
use base qw/Exporter/;

HEADER

}

sub write_module_footer {
	my ($fh, $long_ref, $short_ref) = @_;

	print $fh <<FOOTER;

our \@EXPORT_OK = qw( 
	@{$long_ref}
	@{$short_ref}
    );

our \%EXPORT_TAGS = ( 
	long => [qw/ @{$long_ref} /],
	short => [qw/ @{$short_ref} /],
	);

'Perl is my Igor';
FOOTER

}

sub write_method_pod {
	my ($fh, $long_name, $short_name, $description, $values) = @_;

	my $display;
	$display .= "    $values->{mks}\tMKS\n" if $values->{mks};
	$display .= "    $values->{cgs}\tCGS\n" if $values->{cgs};
	$display ||= "    $values->{value}\n";

	say $fh <<"POD";

=head2 $long_name

$display
$description

This constant can also be accessed through the short name \$$short_name (deprecated) 

=cut
POD
}

sub write_constant {
	my ($fh, $value, $long_name, $short_name) = @_;

	say $fh "use constant $long_name => $value;";
	say $fh "use constant $short_name => $value;" if $short_name;
}
