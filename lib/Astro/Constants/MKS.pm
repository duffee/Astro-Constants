package Astro::Constants::MKS;
# ABSTRACT: this library provides physical constants for use in Astronomy

use strict;
use warnings;
use base qw/Exporter/;
use Scalar::Constant;

use constant LIGHT_SPEED => 2.99792458e8;
use Scalar::Constant A_c => 2.99792458e8;
use constant SPEED_LIGHT => 2.99792458e8;
use constant BOLTZMANN => 1.38064852e-23;
use Scalar::Constant A_k => 1.38064852e-23;
use constant GRAVITATIONAL => 6.67408e-11;
use Scalar::Constant A_G => 6.67408e-11;
use constant ELECTRON_VOLT => 1.6021766208e-19;
use Scalar::Constant A_eV => 1.6021766208e-19;
use constant PLANCK => 6.626070040e-34;
use Scalar::Constant A_h => 6.626070040e-34;
use constant HBAR => 1.054571800e-34;
use Scalar::Constant A_hbar => 1.054571800e-34;
use constant H_BAR => 1.054571800e-34;
use constant ELECTRON_CHARGE => 1.6021766208e-19;
use Scalar::Constant A_e => 1.6021766208e-19;
use constant CHARGE_ELEMENTARY => 1.6021766208e-19;
use constant STEFAN_BOLTZMANN => 5.670367e-8;
use Scalar::Constant A_sigma => 5.670367e-8;
use constant A_RAD => 7.565723e-16;
use Scalar::Constant A_arad => 7.565723e-16;
use constant DENSITY_RADIATION => 7.565723e-16;
use constant WIEN => 2.8977729e-3;
use Scalar::Constant A_Wien => 2.8977729e-3;
use constant ALPHA => 7.2973525664e-3;
use Scalar::Constant A_alpha => 7.2973525664e-3;
use constant VACUUM_IMPEDANCE => 376.730313461;
use Scalar::Constant A_Z0 => 376.730313461;
use constant IMPEDANCE_VACUUM => 376.730313461;
use constant PERMITIV_FREE_SPACE => 8.854187817e-12;
use Scalar::Constant A_eps0 => 8.854187817e-12;
use constant PERMITIVITY_0 => 8.854187817e-12;
use constant PERMEABL_FREE_SPACE => 1.2566370614e-6;
use Scalar::Constant A_mu0 => 1.2566370614e-6;
use constant PERMEABILITY_0 => 1.2566370614e-6;
use constant PI => 3.14159265358979324;
use Scalar::Constant A_pi => 3.14159265358979324;
use constant EXP => 2.71828182846;
use Scalar::Constant A_exp => 2.71828182846;
use constant ATOMIC_MASS_UNIT => 1.660539040e-27;
use Scalar::Constant A_amu => 1.660539040e-27;
use constant PARSEC => 3.08567758149e16;
use Scalar::Constant A_pc => 3.08567758149e16;
use constant ASTRONOMICAL_UNIT => 149_597_870_700;
use Scalar::Constant A_AU => 149_597_870_700;
use constant LIGHT_YEAR => 9_460_730_472_580_800;
use Scalar::Constant A_ly => 9_460_730_472_580_800;
use constant ANGSTROM => 1e-10;
use Scalar::Constant A_AA => 1e-10;
use constant JANSKY => 1e-26;
use Scalar::Constant A_Jy => 1e-26;
use constant AVOGADRO => 6.022140857e23;
use Scalar::Constant A_NA => 6.022140857e23;
use constant YEAR => 31_557_600;
use Scalar::Constant A_yr => 31_557_600;
use constant YEAR_JULIAN => 31_557_600;
use constant YEAR_TROPICAL => 31_556_925.1;
use constant YEAR_SIDEREAL => 31_558_149.8;
use constant YEAR_ANOMALISTIC => 31_558_432.6;
use constant YEAR_ECLIPSE => 29_947_974.3;
use constant SOLAR_MASS => 1.9885e30;
use Scalar::Constant A_msun => 1.9885e30;
use constant MASS_SOLAR => 1.9885e30;
use constant SOLAR_LUMINOSITY => 3.846e26;
use Scalar::Constant A_Lsun => 3.846e26;
use constant LUMINOSITY_SOLAR => 3.846e26;
use constant RHO_C => 1.8791e-26;
use Scalar::Constant A_rhoc => 1.8791e-26;
use constant DENSITY_CRITICAL_RHOc => 1.8791e-26;
use constant HUBBLE_TIME => 3.0853056e17;
use Scalar::Constant A_tH => 3.0853056e17;
use constant CMB_TEMPERATURE => 2.725;
use Scalar::Constant A_TCMB => 2.725;
use constant TEMPERATURE_CMB => 2.725;
use constant SOLAR_V_MAG => -26.74;
use Scalar::Constant A_Vsun => -26.74;
use constant MAGNITUDE_SOLAR_V => -26.74;
use constant SOLAR_V_ABS_MAG => 4.83;
use Scalar::Constant A_MVsun => 4.83;
use constant MAGNITUDE_SOLAR_V_ABSOLUTE => 4.83;
use constant SOLAR_RADIUS => 6.96e8;
use Scalar::Constant A_rsun => 6.96e8;
use constant RADIUS_SOLAR => 6.96e8;
use constant EARTH_MASS => 5.9726e24;
use Scalar::Constant A_mearth => 5.9726e24;
use constant MASS_EARTH => 5.9726e24;
use constant EARTH_RADIUS => 6.371e6;
use Scalar::Constant A_rearth => 6.371e6;
use constant RADIUS_EARTH => 6.371e6;
use constant SOLAR_TEMPERATURE => 5778;
use Scalar::Constant A_Tsun => 5778;
use constant TEMPERATURE_SOLAR_SURFACE => 5778;
use constant SOLAR_DENSITY => 1408;
use Scalar::Constant A_dsun => 1408;
use constant DENSITY_SOLAR => 1408;
use constant EARTH_DENSITY => 5514;
use Scalar::Constant A_dearth => 5514;
use constant DENSITY_EARTH => 5514;
use constant SOLAR_GRAVITY => 274.0;
use Scalar::Constant A_gsun => 274.0;
use constant GRAVITY_SOLAR => 274.0;
use constant EARTH_GRAVITY => 9.78;
use Scalar::Constant A_gearth => 9.78;
use constant GRAVITY_EARTH => 9.78;
use constant LUNAR_RADIUS => 1.7381e6;
use Scalar::Constant A_rmoon => 1.7381e6;
use constant RADIUS_LUNAR => 1.7381e6;
use constant LUNAR_MASS => 7.342e22;
use Scalar::Constant A_mmoon => 7.342e22;
use constant MASS_LUNAR => 7.342e22;
use constant LUNAR_SM_AXIS => 3.844e8;
use Scalar::Constant A_amoon => 3.844e8;
use constant AXIS_SM_LUNAR => 3.844e8;
use constant LUNAR_ECCENTRICITY => 0.0549;
use Scalar::Constant A_emoon => 0.0549;
use constant ECCENTRICITY_LUNAR => 0.0549;
use constant THOMSON_XSECTION => 6.6524587158e-29;
use Scalar::Constant A_sigmaT => 6.6524587158e-29;
use constant THOMSON_CROSS_SECTION => 6.6524587158e-29;
use constant ELECTRON_MASS => 9.10938356e-31;
use Scalar::Constant A_me => 9.10938356e-31;
use constant MASS_ELECTRON => 9.10938356e-31;
use constant PROTON_MASS => 1.672621898e-27;
use Scalar::Constant A_mp => 1.672621898e-27;
use constant MASS_PROTON => 1.672621898e-27;
use constant NEUTRON_MASS => 1.674927471e-27;
use Scalar::Constant A_mn => 1.674927471e-27;
use constant MASS_NEUTRON => 1.674927471e-27;
use constant HYDROGEN_MASS => 1.67372e-24;
use Scalar::Constant A_mH => 1.67372e-24;
use constant MASS_HYDROGEN => 1.67372e-24;
use constant MASS_ALPHA => 6.644_657_230e-27;
use Scalar::Constant A_ma => 6.644_657_230e-27;
use constant ELECTRON_RADIUS => 2.8179403227e-15;
use Scalar::Constant A_re => 2.8179403227e-15;
use constant RADIUS_ELECTRON => 2.8179403227e-15;
use constant BOHR_RADIUS => 5.2917721067e-11;
use Scalar::Constant A_a0 => 5.2917721067e-11;
use constant RADIUS_BOHR => 5.2917721067e-11;

our @EXPORT_OK = qw( 
	LIGHT_SPEED SPEED_LIGHT BOLTZMANN GRAVITATIONAL ELECTRON_VOLT PLANCK HBAR H_BAR ELECTRON_CHARGE CHARGE_ELEMENTARY STEFAN_BOLTZMANN A_RAD DENSITY_RADIATION WIEN ALPHA VACUUM_IMPEDANCE IMPEDANCE_VACUUM PERMITIV_FREE_SPACE PERMITIVITY_0 PERMEABL_FREE_SPACE PERMEABILITY_0 PI EXP ATOMIC_MASS_UNIT PARSEC ASTRONOMICAL_UNIT LIGHT_YEAR ANGSTROM JANSKY AVOGADRO YEAR YEAR_JULIAN YEAR_TROPICAL YEAR_SIDEREAL YEAR_ANOMALISTIC YEAR_ECLIPSE SOLAR_MASS MASS_SOLAR SOLAR_LUMINOSITY LUMINOSITY_SOLAR RHO_C DENSITY_CRITICAL_RHOc HUBBLE_TIME CMB_TEMPERATURE TEMPERATURE_CMB SOLAR_V_MAG MAGNITUDE_SOLAR_V SOLAR_V_ABS_MAG MAGNITUDE_SOLAR_V_ABSOLUTE SOLAR_RADIUS RADIUS_SOLAR EARTH_MASS MASS_EARTH EARTH_RADIUS RADIUS_EARTH SOLAR_TEMPERATURE TEMPERATURE_SOLAR_SURFACE SOLAR_DENSITY DENSITY_SOLAR EARTH_DENSITY DENSITY_EARTH SOLAR_GRAVITY GRAVITY_SOLAR EARTH_GRAVITY GRAVITY_EARTH LUNAR_RADIUS RADIUS_LUNAR LUNAR_MASS MASS_LUNAR LUNAR_SM_AXIS AXIS_SM_LUNAR LUNAR_ECCENTRICITY ECCENTRICITY_LUNAR THOMSON_XSECTION THOMSON_CROSS_SECTION ELECTRON_MASS MASS_ELECTRON PROTON_MASS MASS_PROTON NEUTRON_MASS MASS_NEUTRON HYDROGEN_MASS MASS_HYDROGEN MASS_ALPHA ELECTRON_RADIUS RADIUS_ELECTRON BOHR_RADIUS RADIUS_BOHR
	$A_c $A_k $A_G $A_eV $A_h $A_hbar $A_e $A_sigma $A_arad $A_Wien $A_alpha $A_Z0 $A_eps0 $A_mu0 $A_pi $A_exp $A_amu $A_pc $A_AU $A_ly $A_AA $A_Jy $A_NA $A_yr $A_msun $A_Lsun $A_rhoc $A_tH $A_TCMB $A_Vsun $A_MVsun $A_rsun $A_mearth $A_rearth $A_Tsun $A_dsun $A_dearth $A_gsun $A_gearth $A_rmoon $A_mmoon $A_amoon $A_emoon $A_sigmaT $A_me $A_mp $A_mn $A_mH $A_ma $A_re $A_a0
    );

our %EXPORT_TAGS = ( 
	long => [qw/ LIGHT_SPEED SPEED_LIGHT BOLTZMANN GRAVITATIONAL ELECTRON_VOLT PLANCK HBAR H_BAR ELECTRON_CHARGE CHARGE_ELEMENTARY STEFAN_BOLTZMANN A_RAD DENSITY_RADIATION WIEN ALPHA VACUUM_IMPEDANCE IMPEDANCE_VACUUM PERMITIV_FREE_SPACE PERMITIVITY_0 PERMEABL_FREE_SPACE PERMEABILITY_0 PI EXP ATOMIC_MASS_UNIT PARSEC ASTRONOMICAL_UNIT LIGHT_YEAR ANGSTROM JANSKY AVOGADRO YEAR YEAR_JULIAN YEAR_TROPICAL YEAR_SIDEREAL YEAR_ANOMALISTIC YEAR_ECLIPSE SOLAR_MASS MASS_SOLAR SOLAR_LUMINOSITY LUMINOSITY_SOLAR RHO_C DENSITY_CRITICAL_RHOc HUBBLE_TIME CMB_TEMPERATURE TEMPERATURE_CMB SOLAR_V_MAG MAGNITUDE_SOLAR_V SOLAR_V_ABS_MAG MAGNITUDE_SOLAR_V_ABSOLUTE SOLAR_RADIUS RADIUS_SOLAR EARTH_MASS MASS_EARTH EARTH_RADIUS RADIUS_EARTH SOLAR_TEMPERATURE TEMPERATURE_SOLAR_SURFACE SOLAR_DENSITY DENSITY_SOLAR EARTH_DENSITY DENSITY_EARTH SOLAR_GRAVITY GRAVITY_SOLAR EARTH_GRAVITY GRAVITY_EARTH LUNAR_RADIUS RADIUS_LUNAR LUNAR_MASS MASS_LUNAR LUNAR_SM_AXIS AXIS_SM_LUNAR LUNAR_ECCENTRICITY ECCENTRICITY_LUNAR THOMSON_XSECTION THOMSON_CROSS_SECTION ELECTRON_MASS MASS_ELECTRON PROTON_MASS MASS_PROTON NEUTRON_MASS MASS_NEUTRON HYDROGEN_MASS MASS_HYDROGEN MASS_ALPHA ELECTRON_RADIUS RADIUS_ELECTRON BOHR_RADIUS RADIUS_BOHR /],
	short => [qw/ $A_c $A_k $A_G $A_eV $A_h $A_hbar $A_e $A_sigma $A_arad $A_Wien $A_alpha $A_Z0 $A_eps0 $A_mu0 $A_pi $A_exp $A_amu $A_pc $A_AU $A_ly $A_AA $A_Jy $A_NA $A_yr $A_msun $A_Lsun $A_rhoc $A_tH $A_TCMB $A_Vsun $A_MVsun $A_rsun $A_mearth $A_rearth $A_Tsun $A_dsun $A_dearth $A_gsun $A_gearth $A_rmoon $A_mmoon $A_amoon $A_emoon $A_sigmaT $A_me $A_mp $A_mn $A_mH $A_ma $A_re $A_a0 /],
	);

'Perl is my Igor';
