#!perl -T

use Test::More;
use Astro::Constants::MKS qw/STEFAN_BOLTZMANN DENSITY_RADIATION SPEED_LIGHT 
	ALPHA DENSITY_CRITICAL_RHOc GRAVITATIONAL PI/;


is( 4 * STEFAN_BOLTZMANN / SPEED_LIGHT, DENSITY_RADIATION, 
	'The radiation density constant is defined as a = 4 * sigma /c');

is( ALPHA, 1/137.035999139, 'fine structure constant to within 2.3e-10');

# now rho_c is 3*H^2/8*PI*G
my $hubble_constant = 67.80;	# +/-0.77, 2013-03-21 Planck Mission
is( DENSITY_CRITICAL_RHOc, 3 * $hubble_constant**2 /(8 * PI * GRAVITATIONAL),
	'critical density of the universe, rho_c, depends on Hubble constant');

done_testing();
