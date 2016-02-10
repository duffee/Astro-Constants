package Astro::Constants::CGS;
# ABSTRACT: this library provides physical constants for use in Astronomy

use strict;
use warnings;
use base qw/Exporter/;

use constant LIGHT_SPEED => 2.99792458e10;
use constant A_c = 2.99792458e10;
use constant SPEED_LIGHT => 2.99792458e10;
use constant BOLTZMANN => 1.38064852e-16;
use constant A_k = 1.38064852e-16;
use constant GRAVITATIONAL => 6.67408e-8;
use constant A_G = 6.67408e-8;
use constant ELECTRON_VOLT => 1.6021766208e-12;
use constant A_eV = 1.6021766208e-12;
use constant PLANCK => 6.626070040e-27;
use constant A_h = 6.626070040e-27;
use constant HBAR => 1.054571800e-27;
use constant A_hbar = 1.054571800e-27;
use constant ELECTRON_CHARGE => 4.8032046729e-10;
use constant A_e = 4.8032046729e-10;
use constant CHARGE_ELEMENTARY => 4.8032046729e-10;
use constant STEFAN_BOLTZMANN => 5.670367e-5;
use constant A_sigma = 5.670367e-5;
use constant A_RAD => 7.565723e-15;
use constant A_arad = 7.565723e-15;
use constant WIEN => 2.8977729e-1;
use constant A_Wien = 2.8977729e-1;
use constant ALPHA => 7.2973525664e-3;
use constant A_alpha = 7.2973525664e-3;
use constant VACUUM_IMPEDANCE => 376.730313461;
use constant A_Z0 = 376.730313461;
use constant PERMITIV_FREE_SPACE => 1;
use constant A_eps0 = 1;
use constant PERMEABL_FREE_SPACE => 1;
use constant A_mu0 = 1;
use constant PI => 3.14159265358979324;
use constant A_pi = 3.14159265358979324;
use constant EXP => 2.71828182846;
use constant A_exp = 2.71828182846;
use constant ATOMIC_MASS_UNIT => 1.660539040e-24;
use constant A_amu = 1.660539040e-24;
use constant PARSEC => 3.08567758149e18;
use constant A_pc = 3.08567758149e18;
use constant ASTRONOMICAL_UNIT => 1.496e13;
use constant A_AU = 1.496e13;
use constant LIGHT_YEAR => 9.4607304725808e17;
use constant A_ly = 9.4607304725808e17;
use constant ANGSTROM => 1e-8;
use constant A_AA = 1e-8;
use constant JANSKY => 1e-23;
use constant A_Jy = 1e-23;
use constant AVOGADRO => 6.022140857e23;
use constant A_NA = 6.022140857e23;
use constant YEAR => 31_557_600;
use constant A_yr = 31_557_600;
use constant SOLAR_MASS => 1.9885e33;
use constant A_msun = 1.9885e33;
use constant SOLAR_LUMINOSITY => 3.846e33;
use constant A_Lsun = 3.846e33;
use constant RHO_C => 1.8791e-29;
use constant A_rhoc = 1.8791e-29;
use constant HUBBLE_TIME => 3.0853056e17;
use constant A_tH = 3.0853056e17;
use constant CMB_TEMPERATURE => 2.725;
use constant A_TCMB = 2.725;
use constant SOLAR_V_MAG => -26.74;
use constant A_Vsun = -26.74;
use constant SOLAR_V_ABS_MAG => 4.83;
use constant A_MVsun = 4.83;
use constant SOLAR_RADIUS => 6.96e10;
use constant A_rsun = 6.96e10;
use constant EARTH_MASS => 5.9726e27;
use constant A_mearth = 5.9726e27;
use constant EARTH_RADIUS => 6.371e8;
use constant A_rearth = 6.371e8;
use constant SOLAR_TEMPERATURE => 5778;
use constant A_Tsun = 5778;
use constant SOLAR_DENSITY => 1.408;
use constant A_dsun = 1.408;
use constant EARTH_DENSITY => 5.514;
use constant A_dearth = 5.514;
use constant SOLAR_GRAVITY => 27400;
use constant A_gsun = 27400;
use constant EARTH_GRAVITY => 978;
use constant A_gearth = 978;
use constant LUNAR_RADIUS => 1.7381e8;
use constant A_rmoon = 1.7381e8;
use constant LUNAR_MASS => 7.342e25;
use constant A_mmoon = 7.342e25;
use constant LUNAR_SM_AXIS => 3.844e10;
use constant A_amoon = 3.844e10;
use constant LUNAR_ECCENTRICITY => 0.0549;
use constant A_emoon = 0.0549;
use constant THOMSON_XSECTION => 6.6524587158e-25;
use constant A_sigmaT = 6.6524587158e-25;
use constant ELECTRON_MASS => 9.10938356e-28;
use constant A_me = 9.10938356e-28;
use constant PROTON_MASS => 1.672621898e-24;
use constant A_mp = 1.672621898e-24;
use constant NEUTRON_MASS => 1.674927471e-24;
use constant A_mn = 1.674927471e-24;
use constant HYDROGEN_MASS => 1.67372e-24;
use constant A_mH = 1.67372e-24;
use constant ELECTRON_RADIUS => 2.8179403227e-13;
use constant A_re = 2.8179403227e-13;
use constant BOHR_RADIUS => 5.2917721067e-9;
use constant A_a0 = 5.2917721067e-9;

our @EXPORT_OK = qw( 
	LIGHT_SPEED SPEED_LIGHT BOLTZMANN GRAVITATIONAL ELECTRON_VOLT PLANCK HBAR ELECTRON_CHARGE CHARGE_ELEMENTARY STEFAN_BOLTZMANN A_RAD WIEN ALPHA VACUUM_IMPEDANCE PERMITIV_FREE_SPACE PERMEABL_FREE_SPACE PI EXP ATOMIC_MASS_UNIT PARSEC ASTRONOMICAL_UNIT LIGHT_YEAR ANGSTROM JANSKY AVOGADRO YEAR SOLAR_MASS SOLAR_LUMINOSITY RHO_C HUBBLE_TIME CMB_TEMPERATURE SOLAR_V_MAG SOLAR_V_ABS_MAG SOLAR_RADIUS EARTH_MASS EARTH_RADIUS SOLAR_TEMPERATURE SOLAR_DENSITY EARTH_DENSITY SOLAR_GRAVITY EARTH_GRAVITY LUNAR_RADIUS LUNAR_MASS LUNAR_SM_AXIS LUNAR_ECCENTRICITY THOMSON_XSECTION ELECTRON_MASS PROTON_MASS NEUTRON_MASS HYDROGEN_MASS ELECTRON_RADIUS BOHR_RADIUS
	A_c A_k A_G A_eV A_h A_hbar A_e A_sigma A_arad A_Wien A_alpha A_Z0 A_eps0 A_mu0 A_pi A_exp A_amu A_pc A_AU A_ly A_AA A_Jy A_NA A_yr A_msun A_Lsun A_rhoc A_tH A_TCMB A_Vsun A_MVsun A_rsun A_mearth A_rearth A_Tsun A_dsun A_dearth A_gsun A_gearth A_rmoon A_mmoon A_amoon A_emoon A_sigmaT A_me A_mp A_mn A_mH A_re A_a0
    );

our %EXPORT_TAGS = ( 
	long => [qw/ LIGHT_SPEED SPEED_LIGHT BOLTZMANN GRAVITATIONAL ELECTRON_VOLT PLANCK HBAR ELECTRON_CHARGE CHARGE_ELEMENTARY STEFAN_BOLTZMANN A_RAD WIEN ALPHA VACUUM_IMPEDANCE PERMITIV_FREE_SPACE PERMEABL_FREE_SPACE PI EXP ATOMIC_MASS_UNIT PARSEC ASTRONOMICAL_UNIT LIGHT_YEAR ANGSTROM JANSKY AVOGADRO YEAR SOLAR_MASS SOLAR_LUMINOSITY RHO_C HUBBLE_TIME CMB_TEMPERATURE SOLAR_V_MAG SOLAR_V_ABS_MAG SOLAR_RADIUS EARTH_MASS EARTH_RADIUS SOLAR_TEMPERATURE SOLAR_DENSITY EARTH_DENSITY SOLAR_GRAVITY EARTH_GRAVITY LUNAR_RADIUS LUNAR_MASS LUNAR_SM_AXIS LUNAR_ECCENTRICITY THOMSON_XSECTION ELECTRON_MASS PROTON_MASS NEUTRON_MASS HYDROGEN_MASS ELECTRON_RADIUS BOHR_RADIUS /],
	short => [qw/ A_c A_k A_G A_eV A_h A_hbar A_e A_sigma A_arad A_Wien A_alpha A_Z0 A_eps0 A_mu0 A_pi A_exp A_amu A_pc A_AU A_ly A_AA A_Jy A_NA A_yr A_msun A_Lsun A_rhoc A_tH A_TCMB A_Vsun A_MVsun A_rsun A_mearth A_rearth A_Tsun A_dsun A_dearth A_gsun A_gearth A_rmoon A_mmoon A_amoon A_emoon A_sigmaT A_me A_mp A_mn A_mH A_re A_a0 /],
	);

'Perl is my Igor';
