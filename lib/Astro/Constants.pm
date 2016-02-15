package Astro::Constants;
# ABSTRACT: this library provides physical constants for use in Astronomy

'They are not constant but are changing still. - Cymbeline, Act II, Scene5';
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
The problem with short name constants is that they are not read-only
and can be assigned to which will mess up your program.

=head1 EXPORT

Nothing is exported by default.  Select from the following tags:

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


This constant can also be accessed through the short name $A_c (deprecated)


=method BOLTZMANN

    1.38064852e-23	MKS
    1.38064852e-16	CGS

Boltzmann's constant


This constant can also be accessed through the short name $A_k (deprecated)


=method GRAVITATIONAL

    6.67408e-11	MKS
    6.67408e-8	CGS

universal gravitational constant


This constant can also be accessed through the short name $A_G (deprecated)


=method ELECTRON_VOLT

    1.6021766208e-19	MKS
    1.6021766208e-12	CGS

electron volt


This constant can also be accessed through the short name $A_eV (deprecated)


=method PLANCK

    6.626070040e-34	MKS
    6.626070040e-27	CGS

Planck constant


This constant can also be accessed through the short name $A_h (deprecated)


=method HBAR

    1.054571800e-34	MKS
    1.054571800e-27	CGS

Planck's constant /2pi


This constant can also be accessed through the short name $A_hbar (deprecated)


=method ELECTRON_CHARGE

    1.6021766208e-19	MKS
    4.8032046729e-10	CGS

electron charge (defined positive)


This constant can also be accessed through the short name $A_e (deprecated)


=method STEFAN_BOLTZMANN

    5.670367e-8	MKS
    5.670367e-5	CGS

Stefan-Boltzmann constant


This constant can also be accessed through the short name $A_sigma (deprecated)


=method A_RAD

    7.565723e-16	MKS
    7.565723e-15	CGS

radiation density constant


This constant can also be accessed through the short name $A_arad (deprecated)


=method WIEN

    2.8977729e-3	MKS
    2.8977729e-1	CGS

Wien wavelength displacement law constant


This constant can also be accessed through the short name $A_Wien (deprecated)


=method ALPHA

    7.2973525664e-3	MKS
    7.2973525664e-3	CGS

fine structure constant


This constant can also be accessed through the short name $A_alpha (deprecated)


=method VACUUM_IMPEDANCE

    376.730313461

characteristic impedance of vacuum


This constant can also be accessed through the short name $A_Z0 (deprecated)


=method PERMITIV_FREE_SPACE

    8.854187817e-12	MKS
    1	CGS

permittivity of free space, epsilon_0, the electric constant


This constant can also be accessed through the short name $A_eps0 (deprecated)


=method PERMEABL_FREE_SPACE

    1.2566370614e-6	MKS
    1	CGS

permeability of free space, mu_0, the magnetic constant


This constant can also be accessed through the short name $A_mu0 (deprecated)


=method PI

    3.14159265358979324

trig constant pi


This constant can also be accessed through the short name $A_pi (deprecated)


=method EXP

    2.71828182846

base of natural logarithm


This constant can also be accessed through the short name $A_exp (deprecated)


=method ATOMIC_MASS_UNIT

    1.660539040e-27	MKS
    1.660539040e-24	CGS

atomic mass unit


This constant can also be accessed through the short name $A_amu (deprecated)


=method PARSEC

    3.08567758149e16	MKS
    3.08567758149e18	CGS

parsec


This constant can also be accessed through the short name $A_pc (deprecated)


=method ASTRONOMICAL_UNIT

    149_597_870_700	MKS
    1.496e13	CGS

astronomical unit


This constant can also be accessed through the short name $A_AU (deprecated)


=method LIGHT_YEAR

    9_460_730_472_580_800	MKS
    9.4607304725808e17	CGS

the distance that light travels in vacuum in one Julian year


This constant can also be accessed through the short name $A_ly (deprecated)


=method ANGSTROM

    1e-10	MKS
    1e-8	CGS

Angstrom


This constant can also be accessed through the short name $A_AA (deprecated)


=method JANSKY

    1e-26	MKS
    1e-23	CGS

Jansky


This constant can also be accessed through the short name $A_Jy (deprecated)


=method AVOGADRO

    6.022140857e23

Avogadro's number


This constant can also be accessed through the short name $A_NA (deprecated)


=method YEAR

    31_557_600

defined as exactly 365.25 days of 86400 SI seconds


This constant can also be accessed through the short name $A_yr (deprecated)


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

    1.9885e30	MKS
    1.9885e33	CGS

solar mass


This constant can also be accessed through the short name $A_msun (deprecated)


=method SOLAR_LUMINOSITY

    3.846e26	MKS
    3.846e33	CGS

solar luminosity


This constant can also be accessed through the short name $A_Lsun (deprecated)


=method RHO_C

    1.8791e-26	MKS
    1.8791e-29	CGS

critical density /h^2


This constant can also be accessed through the short name $A_rhoc (deprecated)


=method HUBBLE_TIME

    3.0853056e17

Hubble time *h, the inverse of Hubble's constant valued at 100 km/s/Mpc (DEPRECATED - see ChangeLog)


This constant can also be accessed through the short name $A_tH (deprecated)


=method CMB_TEMPERATURE

    2.725

cosmic microwave background temperature


This constant can also be accessed through the short name $A_TCMB (deprecated)


=method SOLAR_V_MAG

    -26.74

solar V magnitude


This constant can also be accessed through the short name $A_Vsun (deprecated)


=method SOLAR_V_ABS_MAG

    4.83

solar absolute V magnitude


This constant can also be accessed through the short name $A_MVsun (deprecated)


=method SOLAR_RADIUS

    6.96e8	MKS
    6.96e10	CGS

solar radius


This constant can also be accessed through the short name $A_rsun (deprecated)


=method EARTH_MASS

    5.9726e24	MKS
    5.9726e27	CGS

mass of Earth


This constant can also be accessed through the short name $A_mearth (deprecated)


=method EARTH_RADIUS

    6.371e6	MKS
    6.371e8	CGS

radius of Earth


This constant can also be accessed through the short name $A_rearth (deprecated)


=method SOLAR_TEMPERATURE

    5778

surface temperature of sun


This constant can also be accessed through the short name $A_Tsun (deprecated)


=method SOLAR_DENSITY

    1408	MKS
    1.408	CGS

mean solar density


This constant can also be accessed through the short name $A_dsun (deprecated)


=method EARTH_DENSITY

    5514	MKS
    5.514	CGS

mean Earth density


This constant can also be accessed through the short name $A_dearth (deprecated)


=method SOLAR_GRAVITY

    274.0	MKS
    27400	CGS

solar surface gravity


This constant can also be accessed through the short name $A_gsun (deprecated)


=method EARTH_GRAVITY

    9.78	MKS
    978	CGS

Earth surface gravity


This constant can also be accessed through the short name $A_gearth (deprecated)


=method LUNAR_RADIUS

    1.7381e6	MKS
    1.7381e8	CGS

lunar radius


This constant can also be accessed through the short name $A_rmoon (deprecated)


=method LUNAR_MASS

    7.342e22	MKS
    7.342e25	CGS

lunar mass


This constant can also be accessed through the short name $A_mmoon (deprecated)


=method LUNAR_SM_AXIS

    3.844e8	MKS
    3.844e10	CGS

lunar orbital semi-major axis


This constant can also be accessed through the short name $A_amoon (deprecated)


=method LUNAR_ECCENTRICITY

    0.0549

lunar orbital eccentricity


This constant can also be accessed through the short name $A_emoon (deprecated)


=method THOMSON_XSECTION

    6.6524587158e-29	MKS
    6.6524587158e-25	CGS

Thomson cross-section


This constant can also be accessed through the short name $A_sigmaT (deprecated)


=method ELECTRON_MASS

    9.10938356e-31	MKS
    9.10938356e-28	CGS

mass of electron


This constant can also be accessed through the short name $A_me (deprecated)


=method PROTON_MASS

    1.672621898e-27	MKS
    1.672621898e-24	CGS

mass of proton


This constant can also be accessed through the short name $A_mp (deprecated)


=method NEUTRON_MASS

    1.674927471e-27	MKS
    1.674927471e-24	CGS

neutron mass


This constant can also be accessed through the short name $A_mn (deprecated)


=method HYDROGEN_MASS

    1.67372e-24

mass of Hydrogen atom


This constant can also be accessed through the short name $A_mH (deprecated)


=method ELECTRON_RADIUS

    2.8179403227e-15	MKS
    2.8179403227e-13	CGS

classical electron radius


This constant can also be accessed through the short name $A_re (deprecated)


=method BOHR_RADIUS

    5.2917721067e-11	MKS
    5.2917721067e-9	CGS

Bohr radius


This constant can also be accessed through the short name $A_a0 (deprecated)

=head1 SEE ALSO

=for :list
* L<Astro::Cosmology>
* L<PDL|Perl Data Language>
* L<http://physics.nist.gov/|NIST>
* L<http://neilb.org/reviews/constants.html|Neil Bower's review on providing read-only values>

=head1 ISSUES

File issues at the Github repository L<https://github.com/duffee/Astro-Constants/>

Using C<strict> is a must with this code.  Any constants you forgot to import will
evaluate to 0 and silently introduce errors in your code.

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

(What would you want me to test for you to depend on this module?)

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



