#!/usr/bin/perl -w
#
# validates PhysicalConstants.xml against its schema definition

use strict;
use XML::LibXML;
#use XML::LibXML::Schema;

my $schema_file = 'data/PhysicalConstants.xsd';
my $xml_file = 'data/PhysicalConstants.xml';
#$xml_file = 'data/test.xml';

my $doc = XML::LibXML->load_xml(location => $xml_file);

my $schema = XML::LibXML::Schema->new( location => $schema_file );

eval { $schema->validate( $doc ); };
die "Couldn't validate PhysicalConstants.xml: $@" if $@;

print "PhysicalConstants.xml is valid\n";
exit;
