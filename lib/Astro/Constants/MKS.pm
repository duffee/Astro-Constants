package Astro::Constants::MKS;
# ABSTRACT: this library provides physical constants for use in Astronomy

use strict;
use warnings;
use base qw/Exporter/;

use constant LIGHT_SPEED => 2.99792458e8;
use constant SPEED_LIGHT => 2.99792458e8;
*A_c = \2.99792458e8;
use constant BOLTZMANN => 1.38064852e-23;
*A_k = \1.38064852e-23;
use constant GRAVITATIONAL => 6.67408e-11;
*A_G = \6.67408e-11;
use constant ELECTRON_VOLT => 1.6021766208e-19;
*A_eV = \1.6021766208e-19;
use constant PLANCK => 6.626070040e-34;
*A_h = \6.626070040e-34;
use constant HBAR => 1.054571800e-34;
use constant H_BAR => 1.054571800e-34;
*A_hbar = \1.054571800e-34;
use constant CHARGE_ELEMENTARY => 1.6021766208e-19;
use constant ELECTRON_CHARGE => 1.6021766208e-19;
*A_e = \1.6021766208e-19;
use constant STEFAN_BOLTZMANN => 5.670367e-8;
*A_sigma = \5.670367e-8;
use constant A_RAD => 7.565723e-16;
use constant DENSITY_RADIATION => 7.565723e-16;
*A_arad = \7.565723e-16;
use constant WIEN => 2.8977729e-3;
*A_Wien = \2.8977729e-3;
use constant ALPHA => 7.2973525664e-3;
*A_alpha = \7.2973525664e-3;
use constant VACUUM_IMPEDANCE => 376.730313461;
use constant IMPEDANCE_VACUUM => 376.730313461;
*A_Z0 = \376.730313461;
use constant PERMITIVITY_0 => 8.854187817e-12;
use constant PERMITIV_FREE_SPACE => 8.854187817e-12;
*A_eps0 = \8.854187817e-12;
use constant PERMEABILITY_0 => 1.2566370614e-6;
use constant CONSTANT_MAGNETIC => 1.2566370614e-6;
use constant PERMEABL_FREE_SPACE => 1.2566370614e-6;
*A_mu0 = \1.2566370614e-6;
use constant PI => 3.14159265358979324;
*A_pi = \3.14159265358979324;
use constant FOURPI => 12.5663706143592;
use constant FOUR_PI => 12.5663706143592;
*A_4pi = \12.5663706143592;
use constant STERADIAN => 57.2957795130823;
*A_ster = \57.2957795130823;
use constant EXP => 2.71828182846;
*A_exp = \2.71828182846;
use constant ATOMIC_MASS_UNIT => 1.660539040e-27;
*A_amu = \1.660539040e-27;
use constant PARSEC => 3.08567758149e16;
*A_pc = \3.08567758149e16;
use constant ASTRONOMICAL_UNIT => 149_597_870_700;
*A_AU = \149_597_870_700;
use constant LIGHT_YEAR => 9_460_730_472_580_800;
*A_ly = \9_460_730_472_580_800;
use constant ANGSTROM => 1e-10;
*A_AA = \1e-10;
use constant JANSKY => 1e-26;
*A_Jy = \1e-26;
use constant AVOGADRO => 6.022140857e23;
*A_NA = \6.022140857e23;
use constant YEAR_JULIAN => 31_557_600;
use constant YEAR => 31_557_600;
*A_yr = \31_557_600;
use constant YEAR_TROPICAL => 31_556_925.1;
use constant YEAR_SIDEREAL => 31_558_149.8;
use constant YEAR_ANOMALISTIC => 31_558_432.6;
use constant YEAR_ECLIPSE => 29_947_974.3;
use constant SOLAR_MASS => 1.9884e30;
use constant MASS_SOLAR => 1.9884e30;
*A_msun = \1.9884e30;
use constant SOLAR_LUMINOSITY => 3.846e26;
use constant LUMINOSITY_SOLAR => 3.846e26;
*A_Lsun = \3.846e26;
use constant RHO_C => 1.8791e-26;
use constant DENSITY_CRITICAL_RHOc => 1.8791e-26;
*A_rhoc = \1.8791e-26;
use constant HUBBLE_TIME => 3.0853056e17;
*A_tH = \3.0853056e17;
use constant CMB_TEMPERATURE => 2.725;
use constant TEMPERATURE_CMB => 2.725;
*A_TCMB = \2.725;
use constant SOLAR_V_MAG => -26.74;
use constant MAGNITUDE_SOLAR_V => -26.74;
*A_Vsun = \-26.74;
use constant SOLAR_V_ABS_MAG => 4.83;
use constant MAGNITUDE_SOLAR_V_ABSOLUTE => 4.83;
*A_MVsun = \4.83;
use constant SOLAR_RADIUS => 6.96e8;
use constant RADIUS_SOLAR => 6.96e8;
*A_rsun = \6.96e8;
use constant EARTH_MASS => 5.9722e24;
use constant MASS_EARTH => 5.9722e24;
*A_mearth = \5.9722e24;
use constant EARTH_RADIUS => 6.378_136_6e6;
use constant RADIUS_EARTH => 6.378_136_6e6;
*A_rearth = \6.378_136_6e6;
use constant SOLAR_TEMPERATURE => 5778;
use constant TEMPERATURE_SOLAR_SURFACE => 5778;
*A_Tsun = \5778;
use constant SOLAR_DENSITY => 1408;
use constant DENSITY_SOLAR => 1408;
*A_dsun = \1408;
use constant EARTH_DENSITY => 5514;
use constant DENSITY_EARTH => 5514;
*A_dearth = \5514;
use constant SOLAR_GRAVITY => 274.0;
use constant GRAVITY_SOLAR => 274.0;
*A_gsun = \274.0;
use constant EARTH_GRAVITY => 9.78;
use constant GRAVITY_EARTH => 9.78;
*A_gearth = \9.78;
use constant LUNAR_RADIUS => 1.7381e6;
use constant RADIUS_LUNAR => 1.7381e6;
*A_rmoon = \1.7381e6;
use constant LUNAR_MASS => 7.342e22;
use constant MASS_LUNAR => 7.342e22;
*A_mmoon = \7.342e22;
use constant LUNAR_SM_AXIS => 3.844e8;
use constant AXIS_SM_LUNAR => 3.844e8;
*A_amoon = \3.844e8;
use constant LUNAR_ECCENTRICITY => 0.0549;
use constant ECCENTRICITY_LUNAR => 0.0549;
*A_emoon = \0.0549;
use constant THOMSON_XSECTION => 6.6524587158e-29;
use constant THOMSON_CROSS_SECTION => 6.6524587158e-29;
*A_sigmaT = \6.6524587158e-29;
use constant ELECTRON_MASS => 9.10938356e-31;
use constant MASS_ELECTRON => 9.10938356e-31;
*A_me = \9.10938356e-31;
use constant PROTON_MASS => 1.672621898e-27;
use constant MASS_PROTON => 1.672621898e-27;
*A_mp = \1.672621898e-27;
use constant NEUTRON_MASS => 1.674927471e-27;
use constant MASS_NEUTRON => 1.674927471e-27;
*A_mn = \1.674927471e-27;
use constant HYDROGEN_MASS => 1.6738e-27;
use constant MASS_HYDROGEN => 1.6738e-27;
*A_mH = \1.6738e-27;
use constant MASS_ALPHA => 6.644_657_230e-27;
*A_ma = \6.644_657_230e-27;
use constant ELECTRON_RADIUS => 2.8179403227e-15;
use constant RADIUS_ELECTRON => 2.8179403227e-15;
*A_re = \2.8179403227e-15;
use constant BOHR_RADIUS => 5.2917721067e-11;
use constant RADIUS_BOHR => 5.2917721067e-11;
*A_a0 = \5.2917721067e-11;

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
sub pretty {
	if (@_ > 1) {
		return map { sprintf("%1.3e", $_) } @_;
	}
	return sprintf("%1.3e", shift);
}

sub precision {
	my ($name, $type) = @_;
	warn "precision() requires a string, not the constant value" 
		unless exists $_precision{$name};

	return $_precision{$name}->{value};
}

our @EXPORT_OK = qw( 
	LIGHT_SPEED SPEED_LIGHT BOLTZMANN GRAVITATIONAL ELECTRON_VOLT PLANCK HBAR H_BAR CHARGE_ELEMENTARY ELECTRON_CHARGE STEFAN_BOLTZMANN A_RAD DENSITY_RADIATION WIEN ALPHA VACUUM_IMPEDANCE IMPEDANCE_VACUUM PERMITIVITY_0 PERMITIV_FREE_SPACE PERMEABILITY_0 CONSTANT_MAGNETIC PERMEABL_FREE_SPACE PI FOURPI FOUR_PI STERADIAN EXP ATOMIC_MASS_UNIT PARSEC ASTRONOMICAL_UNIT LIGHT_YEAR ANGSTROM JANSKY AVOGADRO YEAR_JULIAN YEAR YEAR_TROPICAL YEAR_SIDEREAL YEAR_ANOMALISTIC YEAR_ECLIPSE SOLAR_MASS MASS_SOLAR SOLAR_LUMINOSITY LUMINOSITY_SOLAR RHO_C DENSITY_CRITICAL_RHOc HUBBLE_TIME CMB_TEMPERATURE TEMPERATURE_CMB SOLAR_V_MAG MAGNITUDE_SOLAR_V SOLAR_V_ABS_MAG MAGNITUDE_SOLAR_V_ABSOLUTE SOLAR_RADIUS RADIUS_SOLAR EARTH_MASS MASS_EARTH EARTH_RADIUS RADIUS_EARTH SOLAR_TEMPERATURE TEMPERATURE_SOLAR_SURFACE SOLAR_DENSITY DENSITY_SOLAR EARTH_DENSITY DENSITY_EARTH SOLAR_GRAVITY GRAVITY_SOLAR EARTH_GRAVITY GRAVITY_EARTH LUNAR_RADIUS RADIUS_LUNAR LUNAR_MASS MASS_LUNAR LUNAR_SM_AXIS AXIS_SM_LUNAR LUNAR_ECCENTRICITY ECCENTRICITY_LUNAR THOMSON_XSECTION THOMSON_CROSS_SECTION ELECTRON_MASS MASS_ELECTRON PROTON_MASS MASS_PROTON NEUTRON_MASS MASS_NEUTRON HYDROGEN_MASS MASS_HYDROGEN MASS_ALPHA ELECTRON_RADIUS RADIUS_ELECTRON BOHR_RADIUS RADIUS_BOHR
	$A_c $A_k $A_G $A_eV $A_h $A_hbar $A_e $A_sigma $A_arad $A_Wien $A_alpha $A_Z0 $A_eps0 $A_mu0 $A_pi $A_4pi $A_ster $A_exp $A_amu $A_pc $A_AU $A_ly $A_AA $A_Jy $A_NA $A_yr $A_msun $A_Lsun $A_rhoc $A_tH $A_TCMB $A_Vsun $A_MVsun $A_rsun $A_mearth $A_rearth $A_Tsun $A_dsun $A_dearth $A_gsun $A_gearth $A_rmoon $A_mmoon $A_amoon $A_emoon $A_sigmaT $A_me $A_mp $A_mn $A_mH $A_ma $A_re $A_a0
	pretty precision
);

our %EXPORT_TAGS = (
	alternates => [qw/ LIGHT_SPEED HBAR CHARGE_ELEMENTARY A_RAD VACUUM_IMPEDANCE PERMITIVITY_0 PERMEABILITY_0 CONSTANT_MAGNETIC FOURPI YEAR_JULIAN SOLAR_MASS SOLAR_LUMINOSITY RHO_C CMB_TEMPERATURE SOLAR_V_MAG SOLAR_V_ABS_MAG SOLAR_RADIUS EARTH_MASS EARTH_RADIUS SOLAR_TEMPERATURE SOLAR_DENSITY EARTH_DENSITY SOLAR_GRAVITY EARTH_GRAVITY LUNAR_RADIUS LUNAR_MASS LUNAR_SM_AXIS LUNAR_ECCENTRICITY THOMSON_XSECTION ELECTRON_MASS PROTON_MASS NEUTRON_MASS HYDROGEN_MASS ELECTRON_RADIUS BOHR_RADIUS /],
	conversion => [qw/ ELECTRON_VOLT STERADIAN ATOMIC_MASS_UNIT PARSEC ASTRONOMICAL_UNIT LIGHT_YEAR ANGSTROM JANSKY AVOGADRO YEAR YEAR_JULIAN YEAR_TROPICAL YEAR_SIDEREAL YEAR_ANOMALISTIC YEAR_ECLIPSE /],
	cosmology => [qw/ SPEED_LIGHT LIGHT_SPEED GRAVITATIONAL PLANCK H_BAR HBAR STEFAN_BOLTZMANN DENSITY_RADIATION A_RAD WIEN ALPHA IMPEDANCE_VACUUM VACUUM_IMPEDANCE PARSEC ASTRONOMICAL_UNIT LIGHT_YEAR JANSKY YEAR YEAR_JULIAN YEAR_TROPICAL YEAR_SIDEREAL MASS_SOLAR SOLAR_MASS LUMINOSITY_SOLAR SOLAR_LUMINOSITY DENSITY_CRITICAL_RHOc RHO_C HUBBLE_TIME TEMPERATURE_CMB CMB_TEMPERATURE MAGNITUDE_SOLAR_V SOLAR_V_MAG MAGNITUDE_SOLAR_V_ABSOLUTE SOLAR_V_ABS_MAG /],
	electromagnetic => [qw/ SPEED_LIGHT LIGHT_SPEED BOLTZMANN ELECTRON_VOLT PLANCK H_BAR HBAR ELECTRON_CHARGE CHARGE_ELEMENTARY STEFAN_BOLTZMANN DENSITY_RADIATION A_RAD WIEN ALPHA IMPEDANCE_VACUUM VACUUM_IMPEDANCE PERMITIV_FREE_SPACE PERMITIVITY_0 PERMEABL_FREE_SPACE CONSTANT_MAGNETIC ANGSTROM JANSKY THOMSON_CROSS_SECTION THOMSON_XSECTION MASS_ELECTRON ELECTRON_MASS RADIUS_ELECTRON ELECTRON_RADIUS RADIUS_BOHR BOHR_RADIUS /],
	fundamental => [qw/ SPEED_LIGHT LIGHT_SPEED BOLTZMANN GRAVITATIONAL ELECTRON_VOLT PLANCK H_BAR HBAR ELECTRON_CHARGE CHARGE_ELEMENTARY STEFAN_BOLTZMANN DENSITY_RADIATION A_RAD WIEN ALPHA IMPEDANCE_VACUUM VACUUM_IMPEDANCE PERMITIV_FREE_SPACE PERMITIVITY_0 PERMEABL_FREE_SPACE CONSTANT_MAGNETIC /],
	long => [qw/ LIGHT_SPEED SPEED_LIGHT BOLTZMANN GRAVITATIONAL ELECTRON_VOLT PLANCK HBAR H_BAR CHARGE_ELEMENTARY ELECTRON_CHARGE STEFAN_BOLTZMANN A_RAD DENSITY_RADIATION WIEN ALPHA VACUUM_IMPEDANCE IMPEDANCE_VACUUM PERMITIVITY_0 PERMITIV_FREE_SPACE PERMEABILITY_0 CONSTANT_MAGNETIC PERMEABL_FREE_SPACE PI FOURPI FOUR_PI STERADIAN EXP ATOMIC_MASS_UNIT PARSEC ASTRONOMICAL_UNIT LIGHT_YEAR ANGSTROM JANSKY AVOGADRO YEAR_JULIAN YEAR YEAR_TROPICAL YEAR_SIDEREAL YEAR_ANOMALISTIC YEAR_ECLIPSE SOLAR_MASS MASS_SOLAR SOLAR_LUMINOSITY LUMINOSITY_SOLAR RHO_C DENSITY_CRITICAL_RHOc HUBBLE_TIME CMB_TEMPERATURE TEMPERATURE_CMB SOLAR_V_MAG MAGNITUDE_SOLAR_V SOLAR_V_ABS_MAG MAGNITUDE_SOLAR_V_ABSOLUTE SOLAR_RADIUS RADIUS_SOLAR EARTH_MASS MASS_EARTH EARTH_RADIUS RADIUS_EARTH SOLAR_TEMPERATURE TEMPERATURE_SOLAR_SURFACE SOLAR_DENSITY DENSITY_SOLAR EARTH_DENSITY DENSITY_EARTH SOLAR_GRAVITY GRAVITY_SOLAR EARTH_GRAVITY GRAVITY_EARTH LUNAR_RADIUS RADIUS_LUNAR LUNAR_MASS MASS_LUNAR LUNAR_SM_AXIS AXIS_SM_LUNAR LUNAR_ECCENTRICITY ECCENTRICITY_LUNAR THOMSON_XSECTION THOMSON_CROSS_SECTION ELECTRON_MASS MASS_ELECTRON PROTON_MASS MASS_PROTON NEUTRON_MASS MASS_NEUTRON HYDROGEN_MASS MASS_HYDROGEN MASS_ALPHA ELECTRON_RADIUS RADIUS_ELECTRON BOHR_RADIUS RADIUS_BOHR /],
	mathematical => [qw/ PI FOUR_PI FOURPI EXP /],
	nuclear => [qw/ ELECTRON_VOLT PLANCK H_BAR HBAR ELECTRON_CHARGE CHARGE_ELEMENTARY STEFAN_BOLTZMANN DENSITY_RADIATION A_RAD WIEN ALPHA IMPEDANCE_VACUUM VACUUM_IMPEDANCE PERMITIV_FREE_SPACE PERMITIVITY_0 PERMEABL_FREE_SPACE CONSTANT_MAGNETIC ATOMIC_MASS_UNIT ANGSTROM AVOGADRO THOMSON_CROSS_SECTION THOMSON_XSECTION MASS_ELECTRON ELECTRON_MASS MASS_PROTON PROTON_MASS MASS_NEUTRON NEUTRON_MASS MASS_HYDROGEN HYDROGEN_MASS MASS_ALPHA RADIUS_ELECTRON ELECTRON_RADIUS RADIUS_BOHR BOHR_RADIUS /],
	planetary => [qw/ GRAVITATIONAL WIEN PARSEC ASTRONOMICAL_UNIT LIGHT_YEAR YEAR_ANOMALISTIC YEAR_ECLIPSE MASS_SOLAR SOLAR_MASS LUMINOSITY_SOLAR SOLAR_LUMINOSITY MAGNITUDE_SOLAR_V SOLAR_V_MAG MAGNITUDE_SOLAR_V_ABSOLUTE SOLAR_V_ABS_MAG RADIUS_SOLAR SOLAR_RADIUS MASS_EARTH EARTH_MASS RADIUS_EARTH EARTH_RADIUS TEMPERATURE_SOLAR_SURFACE SOLAR_TEMPERATURE DENSITY_SOLAR SOLAR_DENSITY DENSITY_EARTH EARTH_DENSITY GRAVITY_SOLAR SOLAR_GRAVITY GRAVITY_EARTH EARTH_GRAVITY RADIUS_LUNAR LUNAR_RADIUS MASS_LUNAR LUNAR_MASS AXIS_SM_LUNAR LUNAR_SM_AXIS ECCENTRICITY_LUNAR LUNAR_ECCENTRICITY /],
	short => [qw/ $A_c $A_k $A_G $A_eV $A_h $A_hbar $A_e $A_sigma $A_arad $A_Wien $A_alpha $A_Z0 $A_eps0 $A_mu0 $A_pi $A_4pi $A_ster $A_exp $A_amu $A_pc $A_AU $A_ly $A_AA $A_Jy $A_NA $A_yr $A_msun $A_Lsun $A_rhoc $A_tH $A_TCMB $A_Vsun $A_MVsun $A_rsun $A_mearth $A_rearth $A_Tsun $A_dsun $A_dearth $A_gsun $A_gearth $A_rmoon $A_mmoon $A_amoon $A_emoon $A_sigmaT $A_me $A_mp $A_mn $A_mH $A_ma $A_re $A_a0 /],
);

'Perl is my Igor';
