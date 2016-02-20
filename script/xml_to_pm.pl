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

write_pod_synopsis($ac_fh);

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
	push @short, '$' . $short_name if $short_name;
		
	my $alternate;
	if ( $constant->getChildrenByTagName('alternateName')
			&& ($alternate = $constant->getChildrenByTagName('alternateName')->shift()->textContent()) ) {
		push @long, $alternate;
		write_constant($mks_fh, ($values->{mks} || $values->{value}), $alternate) if $values->{mks} || $values->{value};
		write_constant($cgs_fh, ($values->{cgs} || $values->{value}), $alternate) if $values->{cgs} || $values->{value};
	}
}

write_pod_footer($ac_fh);
write_module_footer($mks_fh, \@long, \@short);
write_module_footer($cgs_fh, \@long, \@short);

exit;

####

sub write_module_header {
	my ($fh, $name) = @_;

	print $fh <<HEADER;
package $name;
# ABSTRACT: this library provides physical constants for use in Astronomy

HEADER
	if ($name eq 'Astro::Constants') {
		print $fh "'They are not constant but are changing still. - Cymbeline, Act II, Scene 5';\n";
	}
	else {
		print $fh <<IMPORT;
use strict;
use warnings;
use base qw/Exporter/;
use Scalar::Constant;

IMPORT
	}
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

	say $fh <<"POD";	# writing for Dist::Zilla enhanced Pod

=method $long_name

$display
$description

POD
	say $fh "This constant can also be accessed through the short name \$$short_name (deprecated)\n" if $short_name;
}

sub write_pod_synopsis {
	my ($fh, ) = @_;

	say $fh <<'POD';
=head1 SYNOPSIS

	use strict;		# important!
    use Astro::Constants::MKS qw/:long/;

	# to calculate the gravitational force of the Sun on the Earth in Newtons, use GMm/r^2
	my $force_sun_earth = GRAVITATIONAL * MASS_SOLAR * MASS_EARTH / ASTRONOMICAL_UNIT**2;

=head1 DESCRIPTION

This module provides physical and mathematical constants for use
in Astronomy and Astrophysics.  The two metric systems of units,
MKS and CGS, are kept in two separate modules and are called by
name explicitly.
It allows you to choose between constants in units of
centimetres /grams /seconds
with B<Astro::Constants::CGS> and metres /kilograms /seconds with
B<Astro::Constants::MKS>.

Short forms of the constant names are included to provide backwards
compatibility with older versions based on Jeremy Bailin's Astroconst
library and are available through the import tag C<:short>.

The values are stored in F<Physical_Constants.xml> in the B<data> directory
and are mostly based on the 2014 CODATA values from NIST.

The problem with long constants is that they are not interpolated
in double quotish situations because they are really inlined functions.
The problem with short name constants is that they use L<Scalar::Constant>
instead of L<constant> and are 33% slower.

=head2 Why use this module

You are tired of typing in all those numbers and having to make sure that they are
all correct.  How many significant figures is enough or too much?  Where's the
definitive source, Wikipedia?  And which mass does "$m1" refer to, solar or lunar?

The constant values in this module are protected against accidental re-assignment
in your code.  The test suite protects them against accidental finger trouble in my code. 
Other people are using this module, so more eyeballs are looking for errors
and we all benefit.  The constant names are a little longer than you might like,
but you gain in the long run from readable, sharable code that is clear in meaning.
Your programming errors are a little easier to find when you can see that the units 
don't match.  Isn't it reassuring that you can verify how a number is produced
and which meeting of which standards body is responsible for its value?

Trusting someone else's code does carry some risk, which you _should_ consider, 
but have you also considered the risk of doing it yourself with no one to check your work?

=head1 EXPORT

Nothing is exported by default, so the module doesn't clobber any of your variables.  
Select from the following tags:

=for :list
* long		(use this one to get the most constants)
* short
* fundamental
* conversion
* mathematics
* cosmology
* planetary
* electromagnetic
* nuclear

POD
}

sub write_pod_footer {
	my ($fh, ) = @_;

	say $fh <<POD;
=head1 SEE ALSO

=for :list
* L<Astro::Cosmology>
* L<PDL|Perl Data Language>
* L<http://physics.nist.gov/|NIST>
* L<http://asa.usno.navy.mil|Astronomical Almanac>
* L<http://neilb.org/reviews/constants.html|Neil Bower's review on providing read-only values>
* L<Test::Number::Delta>
* L<Test::Deep::NumberTolerant> for testing values within objects

Reference Documents:
=for :list
* L<http://aa.usno.navy.mil/publications/reports/Luzumetal2011.pdf|IAU 2009 system of astronomical constants>
* L<http://asa.usno.navy.mil/static/files/2016/Astronomical_Constants_2016.pdf|Astronomical Constants 2016.pdf>
* L<https://www.iau.org/publications/proceedings_rules/units/|IAU recommendations concerning units>
* L<http://syrte.obspm.fr/IAU_resolutions/Res_IAU2012_B2.pdf|Re-definition of the Astronomical Unit>

=head1 ISSUES

File issues at the Github repository L<https://github.com/duffee/Astro-Constants/>

Using C<strict> is a must with this code.  Any constants you forgot to import will
evaluate to 0 and silently introduce errors in your code.  Caveat Programmer.

=head2 Extending the data set

If you want to add in your own constants or override the factory defaults,
run make, edit the F<PhysicalConstants.xml> file and then run C<dzil build> again.
If you have a pre-existing F<PhysicalConstants.xml> file, drop it in place
before running C<dzil build>.

=head2 Availability

the original astroconst sites have disappeared

=head1 ROADMAP

I plan to deprecate the short names and change the order in which
long names are constructed, moving to a I<noun_adjective> format.
LIGHT_SPEED and SOLAR_MASS become SPEED_LIGHT and MASS_SOLAR.
This principle should make the code easier to read with the most
important information coming at the beginning of the name.

=head1 ASTROCONST  X<ASTROCONST>

(Gleaned from the Astroconst home page -
L<http://web.astroconst.org|http://web.astroconst.org> )

Astroconst is a set of header files in various languages (currently C,
Fortran, Perl, Java, IDL and Gnuplot) that provide a variety of useful
astrophysical constants without constantly needing to look them up.

The generation of the header files from one data file is automated, so you
can add new constants to the data file and generate new header files in all
the appropriate languages without needing to fiddle with each header file
individually.

This package was created and is maintained by Jeremy Bailin.  It's license
states that it I<is completely free, both as in speech and as in beer>.

=head1 DISCLAIMER

No warranty expressed or implied.  This is free software.  If you
want someone to assume the risk of an incorrect value, you better
be paying them.

(What would you want me to test in order for you to depend on this module?)

I<from Jeremy Bailin's astroconst header files>

The Astroconst values have been gleaned from a variety of sources,
and have quite different precisions depending both on the known
precision of the value in question, and in some cases on the
precision of the source I found it from. These values are not
guaranteed to be correct. Astroconst is not certified for any use
whatsoever. If your rocket crashes because the precision of the
lunar orbital eccentricity isn't high enough, that's too bad.

=head1 ACKNOWLEDGMENTS

Jeremy Balin, for writing the astroconst package and helping
test and develop this module.

Doug Burke, for giving me the idea to write this module in the
first place, tidying up Makefile.PL, testing and improving the
documentation.


POD
}

sub write_constant {
	my ($fh, $value, $long_name, $short_name) = @_;

	say $fh "use constant $long_name => $value;";
	say $fh "use Scalar::Constant $short_name => $value;" if $short_name;
}
