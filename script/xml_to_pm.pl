#!/usr/bin/perl -w
#
# builds the Astro::Constants modules from an xml definition file
# Boyd Duffee, Dec 2015

use strict;
use autodie;
use Modern::Perl;
use XML::LibXML;

#die "Usage: $0 infile outfile" unless @ARGV == 1;


my $xml = XML::LibXML->load_xml(location => 'data/output.xml');

for my $constant ( $xml->getElementsByTagName('constant') ) {
	my ($short_name, $long_name, $mks_value, $cgs_value, ) = undef;

	for my $name ( $constant->getChildrenByTagName('name') ) {
		$short_name = $name->textContent() if $name->getAttribute('type') eq 'short';
		$long_name = $name->textContent() if $name->getAttribute('type') eq 'long';
	}

	my $description = $constant->getChildrenByTagName('description')->shift()->textContent();
	for my $value ( $constant->getChildrenByTagName('value') ) {
		$mks_value = $value->textContent() if $value->getAttribute('system') eq 'MKS';
		$cgs_value = $value->textContent() if $value->getAttribute('system') eq 'CGS';
	}

	say join "\t", $long_name, $short_name, $mks_value, $cgs_value, $description;
}
exit;

####

sub write_collection_header {
	my $w = shift;

}
