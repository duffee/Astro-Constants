use v6;
unit class Astro::Constants:ver<0.0.1>:auth<github:Duffee>;

# ABSTRACT: this library provides physical constants for use in Astronomy


  'They are not constant but are changing still. - Cymbeline, Act II, Scene 5';

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

The C<:long> tag imports all the constants in their long name forms
(i.e. GRAVITATIONAL).  Useful subsets can be imported with these tags:
C<:fundamental> C<:conversion> C<:mathematics> C<:cosmology> 
C<:planetary> C<:electromagnetic> or C<:nuclear>.
Alternate names such as LIGHT_SPEED instead of SPEED_LIGHT or HBAR
instead of H_BAR are imported with C<:alternates>.  I'd like
to move away from their use, but they have been in the module for years.
Short forms of the constant names are included to provide backwards
compatibility with older versions based on Jeremy Bailin's Astroconst
library and are available through the import tag C<:short>.

The values are stored in F<Physical_Constants.xml> in the B<data> directory
and are mostly based on the 2014 CODATA values from NIST.

Long name constants are constructed with the L<constant> pragma and
are not interpolated in double quotish situations because they are 
really inlined functions.
Short name constants are constructed with the age-old idiom of fiddling
with the symbol table using typeglobs, e.g. C<*PI = \3.14159>,
and may be slower than the long name constants.

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

Trusting someone else's code does carry some risk, which you I<should> consider, 
but have you also considered the risk of doing it yourself with no one else 
to check your work?

=head1 EXPORT

Nothing is exported by default, so the module doesn't clobber any of your variables.  
Select from the following tags:

=for :list
* C<:long>                (use this one to get the most constants)
* C<:short>
* C<:fundamental>
* C<:conversion>
* C<:mathematics>
* C<:cosmology>
* C<:planetary>
* C<:electromagnetic>
* C<:nuclear>
* C<:alternates>


my constant LIGHT_SPEED is export = 2.99792458e8;

=begin description SPEED_LIGHT

    2.99792458e8	MKS

speed of light in a vacuum


This constant is also available using the short name C<$A_c>
as well as the alternate name C<LIGHT_SPEED> (imported using the :alternate tag for backwards compatibility)


=end description

my constant SPEED_LIGHT is export = 2.99792458e8;

=begin description BOLTZMANN

    1.38064852e-23	MKS

Boltzmann's constant


This constant is also available using the short name C<$A_k>


=end description

my constant BOLTZMANN is export = 1.38064852e-23;

=begin description GRAVITATIONAL

    6.67408e-11	MKS

universal gravitational constant


This constant is also available using the short name C<$A_G>


=end description

my constant GRAVITATIONAL is export = 6.67408e-11;

=begin description ELECTRON_VOLT

    1.6021766208e-19	MKS

electron volt


This constant is also available using the short name C<$A_eV>


=end description

my constant ELECTRON_VOLT is export = 1.6021766208e-19;

=begin description PLANCK

    6.626070040e-34	MKS

Planck constant


This constant is also available using the short name C<$A_h>


=end description

my constant PLANCK is export = 6.626070040e-34;
my constant HBAR is export = 1.054571800e-34;

=begin description H_BAR

    1.054571800e-34	MKS

Planck's constant /2pi


This constant is also available using the short name C<$A_hbar>
as well as the alternate name C<HBAR> (imported using the :alternate tag for backwards compatibility)


=end description

my constant H_BAR is export = 1.054571800e-34;
my constant CHARGE_ELEMENTARY is export = 1.6021766208e-19;

=begin description ELECTRON_CHARGE

    1.6021766208e-19	MKS

electron charge (defined positive)


This constant is also available using the short name C<$A_e>
as well as the alternate name C<CHARGE_ELEMENTARY> (imported using the :alternate tag for backwards compatibility)


=end description

my constant ELECTRON_CHARGE is export = 1.6021766208e-19;

=begin description STEFAN_BOLTZMANN

    5.670367e-8	MKS

Stefan-Boltzmann constant


This constant is also available using the short name C<$A_sigma>


=end description

my constant STEFAN_BOLTZMANN is export = 5.670367e-8;
my constant A_RAD is export = 7.565723e-16;

=begin description DENSITY_RADIATION

    7.565723e-16	MKS

radiation density constant, 4 * sigma / c


This constant is also available using the short name C<$A_arad>
as well as the alternate name C<A_RAD> (imported using the :alternate tag for backwards compatibility)


=end description

my constant DENSITY_RADIATION is export = 7.565723e-16;

=begin description WIEN

    2.8977729e-3	MKS

Wien wavelength displacement law constant


This constant is also available using the short name C<$A_Wien>


=end description

my constant WIEN is export = 2.8977729e-3;

=begin description ALPHA

    7.2973525664e-3	MKS

fine structure constant


This constant is also available using the short name C<$A_alpha>


=end description

my constant ALPHA is export = 7.2973525664e-3;
my constant VACUUM_IMPEDANCE is export = 376.730313461;

=begin description IMPEDANCE_VACUUM

    376.730313461

characteristic impedance of vacuum


This constant is also available using the short name C<$A_Z0>
as well as the alternate name C<VACUUM_IMPEDANCE> (imported using the :alternate tag for backwards compatibility)


=end description

my constant IMPEDANCE_VACUUM is export = 376.730313461;
my constant PERMITIVITY_0 is export = 8.854187817e-12;

=begin description PERMITIV_FREE_SPACE

    8.854187817e-12	MKS

permittivity of free space, epsilon_0, the electric constant


This constant is also available using the short name C<$A_eps0>
as well as the alternate name C<PERMITIVITY_0> (imported using the :alternate tag for backwards compatibility)


=end description

my constant PERMITIV_FREE_SPACE is export = 8.854187817e-12;
my constant PERMEABILITY_0 is export = 1.2566370614e-6;
my constant CONSTANT_MAGNETIC is export = 1.2566370614e-6;

=begin description PERMEABL_FREE_SPACE

    1.2566370614e-6	MKS

permeability of free space, mu_0, the magnetic constant


This constant is also available using the short name C<$A_mu0>
as well as these alternate names (imported using the :alternate tag): PERMEABILITY_0, CONSTANT_MAGNETIC


=end description

my constant PERMEABL_FREE_SPACE is export = 1.2566370614e-6;

=begin description PI

    3.14159265358979324

trig constant pi


This constant is also available using the short name C<$A_pi>


=end description

my constant PI is export = 3.14159265358979324;
my constant FOURPI is export = 12.5663706143592;

=begin description FOUR_PI

    12.5663706143592

trig constant pi times 4 (shorthand for some calculations)


This constant is also available using the short name C<$A_4pi>
as well as the alternate name C<FOURPI> (imported using the :alternate tag for backwards compatibility)


=end description

my constant FOUR_PI is export = 12.5663706143592;

=begin description STERADIAN

    57.2957795130823

a measure of solid angle in square degrees


This constant is also available using the short name C<$A_ster>


=end description

my constant STERADIAN is export = 57.2957795130823;

=begin description EXP

    2.71828182846

base of natural logarithm


This constant is also available using the short name C<$A_exp>


=end description

my constant EXP is export = 2.71828182846;

=begin description ATOMIC_MASS_UNIT

    1.660539040e-27	MKS

atomic mass unit, 1 u


This constant is also available using the short name C<$A_amu>


=end description

my constant ATOMIC_MASS_UNIT is export = 1.660539040e-27;

=begin description PARSEC

    3.08567758149e16	MKS

parsec


This constant is also available using the short name C<$A_pc>


=end description

my constant PARSEC is export = 3.08567758149e16;

=begin description ASTRONOMICAL_UNIT

    149_597_870_700	MKS

astronomical unit


This constant is also available using the short name C<$A_AU>


=end description

my constant ASTRONOMICAL_UNIT is export = 149_597_870_700;

=begin description LIGHT_YEAR

    9_460_730_472_580_800	MKS

the distance that light travels in vacuum in one Julian year


This constant is also available using the short name C<$A_ly>


=end description

my constant LIGHT_YEAR is export = 9_460_730_472_580_800;

=begin description ANGSTROM

    1e-10	MKS

Angstrom


This constant is also available using the short name C<$A_AA>


=end description

my constant ANGSTROM is export = 1e-10;

=begin description JANSKY

    1e-26	MKS

Jansky


This constant is also available using the short name C<$A_Jy>


=end description

my constant JANSKY is export = 1e-26;

=begin description AVOGADRO

    6.022140857e23

Avogadro's number


This constant is also available using the short name C<$A_NA>


=end description

my constant AVOGADRO is export = 6.022140857e23;
my constant YEAR_JULIAN is export = 31_557_600;

=begin description YEAR

    31_557_600

defined as exactly 365.25 days of 86400 SI seconds


This constant is also available using the short name C<$A_yr>
as well as the alternate name C<YEAR_JULIAN> (imported using the :alternate tag for backwards compatibility)


=end description

my constant YEAR is export = 31_557_600;

=begin description YEAR_TROPICAL

    31_556_925.1

the period of time for the ecliptic longitude of the Sun to increase 360 degrees, approximated by the Gregorian calendar




=end description

my constant YEAR_TROPICAL is export = 31_556_925.1;

=begin description YEAR_SIDEREAL

    31_558_149.8

the period of revolution of the Earth around the Sun in a fixed reference frame




=end description

my constant YEAR_SIDEREAL is export = 31_558_149.8;

=begin description YEAR_ANOMALISTIC

    31_558_432.6

the period between successive passages of the Earth through perihelion




=end description

my constant YEAR_ANOMALISTIC is export = 31_558_432.6;

=begin description YEAR_ECLIPSE

    29_947_974.3

the period between successive passages of the Sun (as seen from the geocenter) through the same lunar node




=end description

my constant YEAR_ECLIPSE is export = 29_947_974.3;
my constant SOLAR_MASS is export = 1.9884e30;

=begin description MASS_SOLAR

    1.9884e30	MKS

solar mass


This constant is also available using the short name C<$A_msun>
as well as the alternate name C<SOLAR_MASS> (imported using the :alternate tag for backwards compatibility)


=end description

my constant MASS_SOLAR is export = 1.9884e30;
my constant SOLAR_LUMINOSITY is export = 3.846e26;

=begin description LUMINOSITY_SOLAR

    3.846e26	MKS

solar luminosity


This constant is also available using the short name C<$A_Lsun>
as well as the alternate name C<SOLAR_LUMINOSITY> (imported using the :alternate tag for backwards compatibility)


=end description

my constant LUMINOSITY_SOLAR is export = 3.846e26;
my constant RHO_C is export = 1.8791e-26;

=begin description DENSITY_CRITICAL_RHOc

    1.8791e-26	MKS

critical density /h^2


This constant is also available using the short name C<$A_rhoc>
as well as the alternate name C<RHO_C> (imported using the :alternate tag for backwards compatibility)


=end description

my constant DENSITY_CRITICAL_RHOc is export = 1.8791e-26;

=begin description HUBBLE_TIME

    3.0853056e17

Hubble time *h, the inverse of Hubble's constant valued at 100 km/s/Mpc (DEPRECATED - see ChangeLog)


This constant is also available using the short name C<$A_tH>


=end description

my constant HUBBLE_TIME is export = 3.0853056e17;
my constant CMB_TEMPERATURE is export = 2.725;

=begin description TEMPERATURE_CMB

    2.725

cosmic microwave background temperature in Kelvin


This constant is also available using the short name C<$A_TCMB>
as well as the alternate name C<CMB_TEMPERATURE> (imported using the :alternate tag for backwards compatibility)


=end description

my constant TEMPERATURE_CMB is export = 2.725;
my constant SOLAR_V_MAG is export = -26.74;

=begin description MAGNITUDE_SOLAR_V

    -26.74

solar V magnitude


This constant is also available using the short name C<$A_Vsun>
as well as the alternate name C<SOLAR_V_MAG> (imported using the :alternate tag for backwards compatibility)


=end description

my constant MAGNITUDE_SOLAR_V is export = -26.74;
my constant SOLAR_V_ABS_MAG is export = 4.83;

=begin description MAGNITUDE_SOLAR_V_ABSOLUTE

    4.83

solar absolute V magnitude


This constant is also available using the short name C<$A_MVsun>
as well as the alternate name C<SOLAR_V_ABS_MAG> (imported using the :alternate tag for backwards compatibility)


=end description

my constant MAGNITUDE_SOLAR_V_ABSOLUTE is export = 4.83;
my constant SOLAR_RADIUS is export = 6.96e8;

=begin description RADIUS_SOLAR

    6.96e8	MKS

solar radius


This constant is also available using the short name C<$A_rsun>
as well as the alternate name C<SOLAR_RADIUS> (imported using the :alternate tag for backwards compatibility)


=end description

my constant RADIUS_SOLAR is export = 6.96e8;
my constant EARTH_MASS is export = 5.9722e24;

=begin description MASS_EARTH

    5.9722e24	MKS

mass of Earth


This constant is also available using the short name C<$A_mearth>
as well as the alternate name C<EARTH_MASS> (imported using the :alternate tag for backwards compatibility)


=end description

my constant MASS_EARTH is export = 5.9722e24;
my constant EARTH_RADIUS is export = 6.378_136_6e6;

=begin description RADIUS_EARTH

    6.378_136_6e6	MKS

radius of Earth


This constant is also available using the short name C<$A_rearth>
as well as the alternate name C<EARTH_RADIUS> (imported using the :alternate tag for backwards compatibility)


=end description

my constant RADIUS_EARTH is export = 6.378_136_6e6;
my constant SOLAR_TEMPERATURE is export = 5778;

=begin description TEMPERATURE_SOLAR_SURFACE

    5778

surface temperature of sun


This constant is also available using the short name C<$A_Tsun>
as well as the alternate name C<SOLAR_TEMPERATURE> (imported using the :alternate tag for backwards compatibility)


=end description

my constant TEMPERATURE_SOLAR_SURFACE is export = 5778;
my constant SOLAR_DENSITY is export = 1408;

=begin description DENSITY_SOLAR

    1408	MKS

mean solar density


This constant is also available using the short name C<$A_dsun>
as well as the alternate name C<SOLAR_DENSITY> (imported using the :alternate tag for backwards compatibility)


=end description

my constant DENSITY_SOLAR is export = 1408;
my constant EARTH_DENSITY is export = 5514;

=begin description DENSITY_EARTH

    5514	MKS

mean Earth density


This constant is also available using the short name C<$A_dearth>
as well as the alternate name C<EARTH_DENSITY> (imported using the :alternate tag for backwards compatibility)


=end description

my constant DENSITY_EARTH is export = 5514;
my constant SOLAR_GRAVITY is export = 274.0;

=begin description GRAVITY_SOLAR

    274.0	MKS

solar surface gravity


This constant is also available using the short name C<$A_gsun>
as well as the alternate name C<SOLAR_GRAVITY> (imported using the :alternate tag for backwards compatibility)


=end description

my constant GRAVITY_SOLAR is export = 274.0;
my constant EARTH_GRAVITY is export = 9.78;

=begin description GRAVITY_EARTH

    9.78	MKS

Earth surface gravity


This constant is also available using the short name C<$A_gearth>
as well as the alternate name C<EARTH_GRAVITY> (imported using the :alternate tag for backwards compatibility)


=end description

my constant GRAVITY_EARTH is export = 9.78;
my constant LUNAR_RADIUS is export = 1.7381e6;

=begin description RADIUS_LUNAR

    1.7381e6	MKS

lunar radius


This constant is also available using the short name C<$A_rmoon>
as well as the alternate name C<LUNAR_RADIUS> (imported using the :alternate tag for backwards compatibility)


=end description

my constant RADIUS_LUNAR is export = 1.7381e6;
my constant LUNAR_MASS is export = 7.342e22;

=begin description MASS_LUNAR

    7.342e22	MKS

lunar mass


This constant is also available using the short name C<$A_mmoon>
as well as the alternate name C<LUNAR_MASS> (imported using the :alternate tag for backwards compatibility)


=end description

my constant MASS_LUNAR is export = 7.342e22;
my constant LUNAR_SM_AXIS is export = 3.844e8;

=begin description AXIS_SM_LUNAR

    3.844e8	MKS

lunar orbital semi-major axis


This constant is also available using the short name C<$A_amoon>
as well as the alternate name C<LUNAR_SM_AXIS> (imported using the :alternate tag for backwards compatibility)


=end description

my constant AXIS_SM_LUNAR is export = 3.844e8;
my constant LUNAR_ECCENTRICITY is export = 0.0549;

=begin description ECCENTRICITY_LUNAR

    0.0549

lunar orbital eccentricity


This constant is also available using the short name C<$A_emoon>
as well as the alternate name C<LUNAR_ECCENTRICITY> (imported using the :alternate tag for backwards compatibility)


=end description

my constant ECCENTRICITY_LUNAR is export = 0.0549;
my constant THOMSON_XSECTION is export = 6.6524587158e-29;

=begin description THOMSON_CROSS_SECTION

    6.6524587158e-29	MKS

Thomson cross-section


This constant is also available using the short name C<$A_sigmaT>
as well as the alternate name C<THOMSON_XSECTION> (imported using the :alternate tag for backwards compatibility)


=end description

my constant THOMSON_CROSS_SECTION is export = 6.6524587158e-29;
my constant ELECTRON_MASS is export = 9.10938356e-31;

=begin description MASS_ELECTRON

    9.10938356e-31	MKS

mass of electron


This constant is also available using the short name C<$A_me>
as well as the alternate name C<ELECTRON_MASS> (imported using the :alternate tag for backwards compatibility)


=end description

my constant MASS_ELECTRON is export = 9.10938356e-31;
my constant PROTON_MASS is export = 1.672621898e-27;

=begin description MASS_PROTON

    1.672621898e-27	MKS

mass of proton


This constant is also available using the short name C<$A_mp>
as well as the alternate name C<PROTON_MASS> (imported using the :alternate tag for backwards compatibility)


=end description

my constant MASS_PROTON is export = 1.672621898e-27;
my constant NEUTRON_MASS is export = 1.674927471e-27;

=begin description MASS_NEUTRON

    1.674927471e-27	MKS

neutron mass


This constant is also available using the short name C<$A_mn>
as well as the alternate name C<NEUTRON_MASS> (imported using the :alternate tag for backwards compatibility)


=end description

my constant MASS_NEUTRON is export = 1.674927471e-27;
my constant HYDROGEN_MASS is export = 1.6738e-27;

=begin description MASS_HYDROGEN

    1.6738e-27

mass of Hydrogen atom --   
This value is from the IUPAC and is a little smaller than MASS_PROTON + MASS_ELECTRON, but within the uncertainty given here.  The current value is 1.008u +/- 0.0002 derived from a range of terrestrial materials.  If this is for precision work, you had best understand what you're using.  See https://iupac.org/what-we-do/periodic-table-of-elements/



This constant is also available using the short name C<$A_mH>
as well as the alternate name C<HYDROGEN_MASS> (imported using the :alternate tag for backwards compatibility)


=end description

my constant MASS_HYDROGEN is export = 1.6738e-27;

=begin description MASS_ALPHA

    6.644_657_230e-27

mass of alpha particle


This constant is also available using the short name C<$A_ma>


=end description

my constant MASS_ALPHA is export = 6.644_657_230e-27;
my constant ELECTRON_RADIUS is export = 2.8179403227e-15;

=begin description RADIUS_ELECTRON

    2.8179403227e-15	MKS

classical electron radius


This constant is also available using the short name C<$A_re>
as well as the alternate name C<ELECTRON_RADIUS> (imported using the :alternate tag for backwards compatibility)


=end description

my constant RADIUS_ELECTRON is export = 2.8179403227e-15;
my constant BOHR_RADIUS is export = 5.2917721067e-11;

=begin description RADIUS_BOHR

    5.2917721067e-11	MKS

Bohr radius


This constant is also available using the short name C<$A_a0>
as well as the alternate name C<BOHR_RADIUS> (imported using the :alternate tag for backwards compatibility)


=end description

my constant RADIUS_BOHR is export = 5.2917721067e-11;

=begin description RADIUS_JUPITER

    69_911_000	MKS

Volumetric mean radius of Jupiter


This constant is also available using the short name C<$A_rjup>


=end description

my constant RADIUS_JUPITER is export = 69_911_000;

=begin description MASS_JUPITER

    1.89819e27	MKS

mass of Jupiter


This constant is also available using the short name C<$A_mjup>


=end description

my constant MASS_JUPITER is export = 1.89819e27;
=method pretty

This is a helper function that rounds a value or list of values to 5 significant figures.

=method precision

Give this method the string of the constant and it returns the precision or uncertainty
listed.

  $rel_precision = precision('GRAVITATIONAL');
  $abs_precision = precision('MASS_EARTH');

At the moment you need to know whether the uncertainty is relative or absolute.
Looking to fix this in future versions.

=head2 Deprecated functions

I've gotten rid of C<list_constants> and C<describe_constants> because they are now in
the documentation.  Use C<perldoc Astro::Constants> for that information.

=head1 SEE ALSO

=for :list
* L<Astro::Cosmology>
* L<Perl Data Language|PDL>
* L<NIST|http://physics.nist.gov>
* L<Astronomical Almanac|http://asa.usno.navy.mil>
* L<Neil Bower's review on providing read-only values|http://neilb.org/reviews/constants.html>
* L<Test::Number::Delta>
* L<Test::Deep::NumberTolerant> for testing values within objects

Reference Documents:

=for :list
* L<IAU 2009 system of astronomical constants|http://aa.usno.navy.mil/publications/reports/Luzumetal2011.pdf>
* L<Astronomical Constants 2016.pdf|http://asa.usno.navy.mil/static/files/2016/Astronomical_Constants_2016.pdf>
* L<IAU recommendations concerning units|https://www.iau.org/publications/proceedings_rules/units>
* L<Re-definition of the Astronomical Unit|http://syrte.obspm.fr/IAU_resolutions/Res_IAU2012_B2.pdf>

=head1 REPOSITORY

* L<https://github.com/duffee/Astro-Constants>

=head1 ISSUES

File issues/suggestions at the Github repository L<https://github.com/duffee/Astro-Constants>.
The venerable L<RT|https://rt.cpan.org/Dist/Display.html?Status=Active&Queue=Astro-Constants>
is the canonical bug tracker that is clocked by L<meta::cpan|https://metacpan.org/pod/Astro::Constants>.

Using C<strict> is a must with this code.  Any constants you forgot to import will
evaluate to 0 and silently introduce errors in your code.  Caveat Programmer.

If you are using this module, drop me a line using any available means at your 
disposal, including
*gasp* email (address in the Author section), to let me know how you're using it. 
What new features would you like to see?
If you've had an experience with using the module, let other people know what you
think, good or bad, by rating it at
L<cpanratings|http://cpanratings.perl.org/rate/?distribution=Astro-Constants>.

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
L<astroconst.org|http://web.astroconst.org> )

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

=cut



my %_precision = (
	ALPHA 	=> {value => 2.3e-10, 	type => 'relative'},
	ANGSTROM 	=> {value => 0, 	type => 'relative'},
	ASTRONOMICAL_UNIT 	=> {value => 0, 	type => 'relative'},
	ATOMIC_MASS_UNIT 	=> {value => 1.2e-8, 	type => 'relative'},
	AVOGADRO 	=> {value => 1.2e-8, 	type => 'relative'},
	AXIS_SM_LUNAR 	=> {value => 0.0003, 	type => 'relative'},
	BOLTZMANN 	=> {value => 5.7e-7, 	type => 'relative'},
	DENSITY_CRITICAL_RHOc 	=> {value => 0.0001, 	type => 'relative'},
	DENSITY_EARTH 	=> {value => 0.0002, 	type => 'relative'},
	DENSITY_RADIATION 	=> {value => 2.3e-6, 	type => 'relative'},
	DENSITY_SOLAR 	=> {value => 0.001, 	type => 'relative'},
	ECCENTRICITY_LUNAR 	=> {value => 0.002, 	type => 'relative'},
	ELECTRON_CHARGE 	=> {value => 6.1e-9, 	type => 'relative'},
	ELECTRON_VOLT 	=> {value => 6.1e-9, 	type => 'relative'},
	EXP 	=> {value => 0.00000000001, 	type => 'relative'},
	FOUR_PI 	=> {value => 0.0000000000001, 	type => 'relative'},
	GRAVITATIONAL 	=> {value => 4.7e-5, 	type => 'relative'},
	GRAVITY_EARTH 	=> {value => 0.001, 	type => 'relative'},
	GRAVITY_SOLAR 	=> {value => 0.0004, 	type => 'relative'},
	HUBBLE_TIME 	=> {value => 0.0000001, 	type => 'relative'},
	H_BAR 	=> {value => 1.2e-8, 	type => 'relative'},
	IMPEDANCE_VACUUM 	=> {value => 1e-50, 	type => 'relative'},
	JANSKY 	=> {value => 0, 	type => 'relative'},
	LIGHT_YEAR 	=> {value => 0, 	type => 'relative'},
	LUMINOSITY_SOLAR 	=> {value => 0.0003, 	type => 'relative'},
	MAGNITUDE_SOLAR_V 	=> {value => 0.0004, 	type => 'relative'},
	MAGNITUDE_SOLAR_V_ABSOLUTE 	=> {value => 0.002, 	type => 'relative'},
	MASS_ALPHA 	=> {value => 1.2e-8, 	type => 'relative'},
	MASS_EARTH 	=> {value => 6e20, 	type => 'absolute'},
	MASS_ELECTRON 	=> {value => 1.2e-8, 	type => 'relative'},
	MASS_HYDROGEN 	=> {value => 3.3e-31, 	type => 'absolute'},
	MASS_JUPITER 	=> {value => 5e-6, 	type => 'relative'},
	MASS_LUNAR 	=> {value => 0.0002, 	type => 'relative'},
	MASS_NEUTRON 	=> {value => 1.2e-8, 	type => 'relative'},
	MASS_PROTON 	=> {value => 1.2e-8, 	type => 'relative'},
	MASS_SOLAR 	=> {value => 0.0001, 	type => 'relative'},
	PARSEC 	=> {value => 1e-11, 	type => 'relative'},
	PERMEABL_FREE_SPACE 	=> {value => 1e-10, 	type => 'relative'},
	PERMITIV_FREE_SPACE 	=> {value => 1e-30, 	type => 'relative'},
	PI 	=> {value => 0.00000000000000001, 	type => 'relative'},
	PLANCK 	=> {value => 1.2e-8, 	type => 'relative'},
	RADIUS_BOHR 	=> {value => 2.3e-10, 	type => 'relative'},
	RADIUS_EARTH 	=> {value => 0.1, 	type => 'absolute'},
	RADIUS_ELECTRON 	=> {value => 6.8e-10, 	type => 'relative'},
	RADIUS_JUPITER 	=> {value => 1.5e-5, 	type => 'relative'},
	RADIUS_LUNAR 	=> {value => 6e-5, 	type => 'relative'},
	RADIUS_SOLAR 	=> {value => 0.002, 	type => 'relative'},
	SPEED_LIGHT 	=> {value => 0, 	type => 'relative'},
	STEFAN_BOLTZMANN 	=> {value => 2.3e-6, 	type => 'relative'},
	STERADIAN 	=> {value => 0.00000000000001, 	type => 'relative'},
	TEMPERATURE_CMB 	=> {value => 0.0007, 	type => 'relative'},
	TEMPERATURE_SOLAR_SURFACE 	=> {value => 0.0002, 	type => 'relative'},
	THOMSON_CROSS_SECTION 	=> {value => 1.4e-9, 	type => 'relative'},
	WIEN 	=> {value => 5.7e-7, 	type => 'relative'},
	YEAR 	=> {value => 0, 	type => 'relative'},
	YEAR_ANOMALISTIC 	=> {value => 0.1, 	type => 'absolute'},
	YEAR_ECLIPSE 	=> {value => 0.1, 	type => 'absolute'},
	YEAR_SIDEREAL 	=> {value => 1, 	type => 'absolute'},
	YEAR_TROPICAL 	=> {value => 0.1, 	type => 'absolute'},
);

# some helper functions
multi sub precision  (Num $value) is export {
	# this is broken
	return $_precision{$name}->{value};
}

'Perl is my Igor';
