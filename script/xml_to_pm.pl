#!/usr/bin/perl -w
#
# builds the Astro::Constants modules from an xml definition file
# Boyd Duffee, Dec 2015

use strict;
use autodie;
use Modern::Perl;
use XML::LibXML;

#die "Usage: $0 infile outfile" unless @ARGV == 1;

my (@long, @short, );

my $xml = XML::LibXML->load_xml(location => 'data/output.xml');

my $lib = 'lib';	# where is the lib directory
mkdir "$lib/Astro/Constants" unless -d "$lib/Astro/Constants";
open my $mks_fh, '>', "$lib/Astro/Constants/MKS.pm";
open my $cgs_fh, '>', "$lib/Astro/Constants/CGS.pm";

write_module_header($mks_fh, 'Astro::Constants::MKS');
write_module_header($cgs_fh, 'Astro::Constants::CGS');

for my $constant ( $xml->getElementsByTagName('PhysicalConstant') ) {
	my ($short_name, $long_name, $mks_value, $cgs_value, ) = undef;

	for my $name ( $constant->getChildrenByTagName('name') ) {
		$short_name = $name->textContent() if $name->getAttribute('type') eq 'short';
		$long_name = $name->textContent() if $name->getAttribute('type') eq 'long';
	}

	my $description = $constant->getChildrenByTagName('description')->shift()->textContent();
	for my $value ( $constant->getChildrenByTagName('value') ) {
		next unless $value->hasAttribute('system');

		$mks_value = $value->textContent() if $value->getAttribute('system') eq 'MKS';
		$cgs_value = $value->textContent() if $value->getAttribute('system') eq 'CGS';
	}

	#say join "\t", $long_name, $short_name, $mks_value, $cgs_value, $description;

	write_method_pod($long_name, $short_name, $description, $mks_value, $cgs_value);
	write_constant($mks_fh, $mks_value, $long_name, $short_name) if $mks_value;
	write_constant($cgs_fh, $cgs_value, $long_name, $short_name) if $cgs_value;

	push @long, $long_name if $long_name;
	push @short, $short_name if $short_name;
}

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
	my ($long_name, $short_name, $description, $mks, $cgs) = @_;

	#print "I don't write pod methods yet";
}

sub write_constant {
	my ($fh, $value, $long_name, $short_name) = @_;

	say $fh "use constant $long_name => $value;";
	say $fh "use constant $short_name => $value;";
}
