package Astro::Constants;
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
I<This could do with some benchmarking.>

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
* long		(use this one to get the most constants)
* short
* fundamental
* conversion
* mathematics
* cosmology
* planetary
* electromagnetic
* nuclear



=method LIGHT_SPEED

    2.99792458e8	MKS
    2.99792458e10	CGS

speed of light in a vacuum


This constant can also be accessed through the variable $A_c (which may be deprecated)


=method BOLTZMANN

    1.38064852e-23	MKS
    1.38064852e-16	CGS

Boltzmann's constant


This constant can also be accessed through the variable $A_k (which may be deprecated)


=method GRAVITATIONAL

    6.67408e-11	MKS
    6.67408e-8	CGS

universal gravitational constant


This constant can also be accessed through the variable $A_G (which may be deprecated)


=method ELECTRON_VOLT

    1.6021766208e-19	MKS
    1.6021766208e-12	CGS

electron volt


This constant can also be accessed through the variable $A_eV (which may be deprecated)


=method PLANCK

    6.626070040e-34	MKS
    6.626070040e-27	CGS

Planck constant


This constant can also be accessed through the variable $A_h (which may be deprecated)


=method HBAR

    1.054571800e-34	MKS
    1.054571800e-27	CGS

Planck's constant /2pi


This constant can also be accessed through the variable $A_hbar (which may be deprecated)


=method ELECTRON_CHARGE

    1.6021766208e-19	MKS
    4.8032046729e-10	CGS

electron charge (defined positive)


This constant can also be accessed through the variable $A_e (which may be deprecated)


=method STEFAN_BOLTZMANN

    5.670367e-8	MKS
    5.670367e-5	CGS

Stefan-Boltzmann constant


This constant can also be accessed through the variable $A_sigma (which may be deprecated)


=method A_RAD

    7.565723e-16	MKS
    7.565723e-15	CGS

radiation density constant, 4 * sigma / c


This constant can also be accessed through the variable $A_arad (which may be deprecated)


=method WIEN

    2.8977729e-3	MKS
    2.8977729e-1	CGS

Wien wavelength displacement law constant


This constant can also be accessed through the variable $A_Wien (which may be deprecated)


=method ALPHA

    7.2973525664e-3	MKS
    7.2973525664e-3	CGS

fine structure constant


This constant can also be accessed through the variable $A_alpha (which may be deprecated)


=method VACUUM_IMPEDANCE

    376.730313461

characteristic impedance of vacuum


This constant can also be accessed through the variable $A_Z0 (which may be deprecated)


=method PERMITIV_FREE_SPACE

    8.854187817e-12	MKS
    1	CGS

permittivity of free space, epsilon_0, the electric constant


This constant can also be accessed through the variable $A_eps0 (which may be deprecated)


=method PERMEABL_FREE_SPACE

    1.2566370614e-6	MKS
    1	CGS

permeability of free space, mu_0, the magnetic constant


This constant can also be accessed through the variable $A_mu0 (which may be deprecated)


=method PI

    3.14159265358979324

trig constant pi


This constant can also be accessed through the variable $A_pi (which may be deprecated)


=method EXP

    2.71828182846

base of natural logarithm


This constant can also be accessed through the variable $A_exp (which may be deprecated)


=method ATOMIC_MASS_UNIT

    1.660539040e-27	MKS
    1.660539040e-24	CGS

atomic mass unit, 1 u


This constant can also be accessed through the variable $A_amu (which may be deprecated)


=method PARSEC

    3.08567758149e16	MKS
    3.08567758149e18	CGS

parsec


This constant can also be accessed through the variable $A_pc (which may be deprecated)


=method ASTRONOMICAL_UNIT

    149_597_870_700	MKS
    1.496e13	CGS

astronomical unit


This constant can also be accessed through the variable $A_AU (which may be deprecated)


=method LIGHT_YEAR

    9_460_730_472_580_800	MKS
    9.4607304725808e17	CGS

the distance that light travels in vacuum in one Julian year


This constant can also be accessed through the variable $A_ly (which may be deprecated)


=method ANGSTROM

    1e-10	MKS
    1e-8	CGS

Angstrom


This constant can also be accessed through the variable $A_AA (which may be deprecated)


=method JANSKY

    1e-26	MKS
    1e-23	CGS

Jansky


This constant can also be accessed through the variable $A_Jy (which may be deprecated)


=method AVOGADRO

    6.022140857e23

Avogadro's number


This constant can also be accessed through the variable $A_NA (which may be deprecated)


=method YEAR

    31_557_600

defined as exactly 365.25 days of 86400 SI seconds


This constant can also be accessed through the variable $A_yr (which may be deprecated)


=method YEAR_TROPICAL

    31_556_925.1

the period of time for the ecliptic longitude of the Sun to increase 360 degrees, approximated by the Gregorian calendar



=method YEAR_SIDEREAL

    31_558_149.8

the period of revolution of the Earth around the Sun in a fixed reference frame



=method YEAR_ANOMALISTIC

    31_558_432.6

the period between successive passages of the Earth through perihelion



=method YEAR_ECLIPSE

    29_947_974.3

the period between successive passages of the Sun (as seen from the geocenter) through the same lunar node



=method SOLAR_MASS

    1.9884e30	MKS
    1.9884e33	CGS

solar mass


This constant can also be accessed through the variable $A_msun (which may be deprecated)


=method SOLAR_LUMINOSITY

    3.846e26	MKS
    3.846e33	CGS

solar luminosity


This constant can also be accessed through the variable $A_Lsun (which may be deprecated)


=method RHO_C

    1.8791e-26	MKS
    1.8791e-29	CGS

critical density /h^2


This constant can also be accessed through the variable $A_rhoc (which may be deprecated)


=method HUBBLE_TIME

    3.0853056e17

Hubble time *h, the inverse of Hubble's constant valued at 100 km/s/Mpc (DEPRECATED - see ChangeLog)


This constant can also be accessed through the variable $A_tH (which may be deprecated)


=method CMB_TEMPERATURE

    2.725

cosmic microwave background temperature


This constant can also be accessed through the variable $A_TCMB (which may be deprecated)


=method SOLAR_V_MAG

    -26.74

solar V magnitude


This constant can also be accessed through the variable $A_Vsun (which may be deprecated)


=method SOLAR_V_ABS_MAG

    4.83

solar absolute V magnitude


This constant can also be accessed through the variable $A_MVsun (which may be deprecated)


=method SOLAR_RADIUS

    6.96e8	MKS
    6.96e10	CGS

solar radius


This constant can also be accessed through the variable $A_rsun (which may be deprecated)


=method EARTH_MASS

    5.9722e24	MKS
    5.9722e27	CGS

mass of Earth


This constant can also be accessed through the variable $A_mearth (which may be deprecated)


=method EARTH_RADIUS

    6.378_136_6e6	MKS
    6.378_136_6e8	CGS

radius of Earth


This constant can also be accessed through the variable $A_rearth (which may be deprecated)


=method SOLAR_TEMPERATURE

    5778

surface temperature of sun


This constant can also be accessed through the variable $A_Tsun (which may be deprecated)


=method SOLAR_DENSITY

    1408	MKS
    1.408	CGS

mean solar density


This constant can also be accessed through the variable $A_dsun (which may be deprecated)


=method EARTH_DENSITY

    5514	MKS
    5.514	CGS

mean Earth density


This constant can also be accessed through the variable $A_dearth (which may be deprecated)


=method SOLAR_GRAVITY

    274.0	MKS
    27400	CGS

solar surface gravity


This constant can also be accessed through the variable $A_gsun (which may be deprecated)


=method EARTH_GRAVITY

    9.78	MKS
    978	CGS

Earth surface gravity


This constant can also be accessed through the variable $A_gearth (which may be deprecated)


=method LUNAR_RADIUS

    1.7381e6	MKS
    1.7381e8	CGS

lunar radius


This constant can also be accessed through the variable $A_rmoon (which may be deprecated)


=method LUNAR_MASS

    7.342e22	MKS
    7.342e25	CGS

lunar mass


This constant can also be accessed through the variable $A_mmoon (which may be deprecated)


=method LUNAR_SM_AXIS

    3.844e8	MKS
    3.844e10	CGS

lunar orbital semi-major axis


This constant can also be accessed through the variable $A_amoon (which may be deprecated)


=method LUNAR_ECCENTRICITY

    0.0549

lunar orbital eccentricity


This constant can also be accessed through the variable $A_emoon (which may be deprecated)


=method THOMSON_XSECTION

    6.6524587158e-29	MKS
    6.6524587158e-25	CGS

Thomson cross-section


This constant can also be accessed through the variable $A_sigmaT (which may be deprecated)


=method ELECTRON_MASS

    9.10938356e-31	MKS
    9.10938356e-28	CGS

mass of electron


This constant can also be accessed through the variable $A_me (which may be deprecated)


=method PROTON_MASS

    1.672621898e-27	MKS
    1.672621898e-24	CGS

mass of proton


This constant can also be accessed through the variable $A_mp (which may be deprecated)


=method NEUTRON_MASS

    1.674927471e-27	MKS
    1.674927471e-24	CGS

neutron mass


This constant can also be accessed through the variable $A_mn (which may be deprecated)


=method HYDROGEN_MASS

    1.67372e-24

mass of Hydrogen atom


This constant can also be accessed through the variable $A_mH (which may be deprecated)


=method MASS_ALPHA

    6.644_657_230e-27

mass of alpha particle


This constant can also be accessed through the variable $A_ma (which may be deprecated)


=method ELECTRON_RADIUS

    2.8179403227e-15	MKS
    2.8179403227e-13	CGS

classical electron radius


This constant can also be accessed through the variable $A_re (which may be deprecated)


=method BOHR_RADIUS

    5.2917721067e-11	MKS
    5.2917721067e-9	CGS

Bohr radius


This constant can also be accessed through the variable $A_a0 (which may be deprecated)

=method pretty

This is a helper function that rounds a value or list of values to 5 significant figures.

=method precision

Currently broken.  It will return in v0.11

=head2 Deprecated functions

I've gotten rid of C<list_constants> and C<describe_constants> because they are now in
the documentation.  Use C<perldoc Astro::Constants> for that information.

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

File issues/suggestions at the Github repository L<https://github.com/duffee/Astro-Constants/>.
The venerable L<https://rt.cpan.org/Dist/Display.html?Status=Active&Queue=Astro-Constants|RT>
is the canonical bug tracker that is clocked by L<https://metacpan.org/pod/Astro::Constants|meta::cpan>.

Using C<strict> is a must with this code.  Any constants you forgot to import will
evaluate to 0 and silently introduce errors in your code.  Caveat Programmer.

If you are using this module, drop me a line using any available means at your 
disposal, including
*gasp* email (address in the Author section), to let me know how you're using it. 
What new features would you like to see?
If you've had an experience with using the module, let other people know what you
think, good or bad, by rating it at
L<http://cpanratings.perl.org/rate/?distribution=Astro-Constants|cpanratings>.

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



