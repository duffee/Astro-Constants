package Astro::Constants::CGS;
# ABSTRACT: this library provides physical constants for use in Astronomy

use strict;
use warnings;
use base qw/Exporter/;

use constant LIGHT_SPEED => 2.99792458e10;
use constant A_c => 2.99792458e10;
use constant BOLTZMANN => 1.38064852e-16;
use constant A_k => 1.38064852e-16;
use constant GRAVITATIONAL => 6.67408e-8;
use constant A_G => 6.67408e-8;
use constant ELECTRON_MASS => 9.1093897e-28;
use constant A_me => 9.1093897e-28;
use constant PROTON_MASS => 1.672631e-24;
use constant A_mp => 1.672631e-24;
use constant ATOMIC_MASS_UNIT => 1.6605402e-24;
use constant A_amu => 1.6605402e-24;
use constant ELECTRON_VOLT => 1.6021772e-12;
use constant A_eV => 1.6021772e-12;
use constant PLANCK => 6.6260755e-27;
use constant A_h => 6.6260755e-27;
use constant HBAR => 1.0545727e-27;
use constant A_hbar => 1.0545727e-27;
use constant ELECTRON_CHARGE => 4.8032e-10;
use constant A_e => 4.8032e-10;
use constant NEUTRON_MASS => 1.6749286e-24;
use constant A_mn => 1.6749286e-24;
use constant HYDROGEN_MASS => 1.6733e-24;
use constant A_mH => 1.6733e-24;
use constant PARSEC => 3.08567758e18;
use constant A_pc => 3.08567758e18;
use constant SOLAR_MASS => 1.99e33;
use constant A_msun => 1.99e33;
use constant SOLAR_RADIUS => 6.96e10;
use constant A_rsun => 6.96e10;
use constant ASTRONOMICAL_UNIT => 1.496e13;
use constant A_AU => 1.496e13;
use constant LIGHT_YEAR => 9.463e17;
use constant A_ly => 9.463e17;
use constant SOLAR_LUMINOSITY => 3.9e33;
use constant A_Lsun => 3.9e33;
use constant EARTH_MASS => 5.976e27;
use constant A_mearth => 5.976e27;
use constant EARTH_RADIUS => 6.378e8;
use constant A_rearth => 6.378e8;
use constant ANGSTROM => 1e-8;
use constant A_AA => 1e-8;
use constant JANSKY => 1e-23;
use constant A_Jy => 1e-23;
use constant RHO_C => 1.8791e-29;
use constant A_rhoc => 1.8791e-29;
use constant STEFAN_BOLTZMANN => 5.67040e-5;
use constant A_sigma => 5.67040e-5;
use constant A_RAD => 7.5646e-15;
use constant A_arad => 7.5646e-15;
use constant THOMSON_XSECTION => 6.6524585e-25;
use constant A_sigmaT => 6.6524585e-25;
use constant ELECTRON_RADIUS => 2.817941e-13;
use constant A_re => 2.817941e-13;
use constant BOHR_RADIUS => 5.29177208e-9;
use constant A_a0 => 5.29177208e-9;
use constant WIEN => 2.897769e-1;
use constant A_Wien => 2.897769e-1;
use constant SOLAR_DENSITY => 1.408;
use constant A_dsun => 1.408;
use constant EARTH_DENSITY => 5.515;
use constant A_dearth => 5.515;
use constant SOLAR_GRAVITY => 27400;
use constant A_gsun => 27400;
use constant EARTH_GRAVITY => 978;
use constant A_gearth => 978;
use constant PERMITIV_FREE_SPACE => 1;
use constant A_eps0 => 1;
use constant PERMEABL_FREE_SPACE => 1;
use constant A_mu0 => 1;
use constant LUNAR_RADIUS => 1738e5;
use constant A_rmoon => 1738e5;
use constant LUNAR_MASS => 7.348e25;
use constant A_mmoon => 7.348e25;
use constant LUNAR_SM_AXIS => 3.844e10;
use constant A_amoon => 3.844e10;

our @EXPORT_OK = qw( 
	LIGHT_SPEED BOLTZMANN GRAVITATIONAL ELECTRON_MASS PROTON_MASS ATOMIC_MASS_UNIT ELECTRON_VOLT PLANCK HBAR ELECTRON_CHARGE NEUTRON_MASS HYDROGEN_MASS PARSEC SOLAR_MASS SOLAR_RADIUS ASTRONOMICAL_UNIT LIGHT_YEAR SOLAR_LUMINOSITY EARTH_MASS EARTH_RADIUS ANGSTROM JANSKY RHO_C STEFAN_BOLTZMANN A_RAD THOMSON_XSECTION ELECTRON_RADIUS BOHR_RADIUS WIEN ALPHA AVOGADRO YEAR HUBBLE_TIME SOLAR_TEMPERATURE CMB_TEMPERATURE PI EXP SOLAR_DENSITY EARTH_DENSITY SOLAR_GRAVITY EARTH_GRAVITY SOLAR_V_MAG SOLAR_V_ABS_MAG VACUUM_IMPEDANCE PERMITIV_FREE_SPACE PERMEABL_FREE_SPACE LUNAR_RADIUS LUNAR_MASS LUNAR_SM_AXIS LUNAR_ECCENTRICITY
	A_c A_k A_G A_me A_mp A_amu A_eV A_h A_hbar A_e A_mn A_mH A_pc A_msun A_rsun A_AU A_ly A_Lsun A_mearth A_rearth A_AA A_Jy A_rhoc A_sigma A_arad A_sigmaT A_re A_a0 A_Wien A_alpha A_NA A_yr A_tH A_Tsun A_TCMB A_pi A_exp A_dsun A_dearth A_gsun A_gearth A_Vsun A_MVsun A_Z0 A_eps0 A_mu0 A_rmoon A_mmoon A_amoon A_emoon
    );

our %EXPORT_TAGS = ( 
	long => [qw/ LIGHT_SPEED BOLTZMANN GRAVITATIONAL ELECTRON_MASS PROTON_MASS ATOMIC_MASS_UNIT ELECTRON_VOLT PLANCK HBAR ELECTRON_CHARGE NEUTRON_MASS HYDROGEN_MASS PARSEC SOLAR_MASS SOLAR_RADIUS ASTRONOMICAL_UNIT LIGHT_YEAR SOLAR_LUMINOSITY EARTH_MASS EARTH_RADIUS ANGSTROM JANSKY RHO_C STEFAN_BOLTZMANN A_RAD THOMSON_XSECTION ELECTRON_RADIUS BOHR_RADIUS WIEN ALPHA AVOGADRO YEAR HUBBLE_TIME SOLAR_TEMPERATURE CMB_TEMPERATURE PI EXP SOLAR_DENSITY EARTH_DENSITY SOLAR_GRAVITY EARTH_GRAVITY SOLAR_V_MAG SOLAR_V_ABS_MAG VACUUM_IMPEDANCE PERMITIV_FREE_SPACE PERMEABL_FREE_SPACE LUNAR_RADIUS LUNAR_MASS LUNAR_SM_AXIS LUNAR_ECCENTRICITY /],
	short => [qw/ A_c A_k A_G A_me A_mp A_amu A_eV A_h A_hbar A_e A_mn A_mH A_pc A_msun A_rsun A_AU A_ly A_Lsun A_mearth A_rearth A_AA A_Jy A_rhoc A_sigma A_arad A_sigmaT A_re A_a0 A_Wien A_alpha A_NA A_yr A_tH A_Tsun A_TCMB A_pi A_exp A_dsun A_dearth A_gsun A_gearth A_Vsun A_MVsun A_Z0 A_eps0 A_mu0 A_rmoon A_mmoon A_amoon A_emoon /],
	);

'Perl is my Igor';
