#!perl -T

use Test::More;
#use Astro::Constants::MKS qw/DENSITY_RADIATION DENSITY_CRITICAL_RHOc SPEED_LIGHT GRAVITATIONAL PARSEC ASTRONOMICAL_UNIT /;

ok(1, 'No testing here yet');

TODO: {
	local $TODO = 'DENSITY_RADIATION and DENSITY_CRITICAL_RHOc not implemented yet';


is( ALPHA, 1/137.035999139, 'fine structure constant to within 2.3e-10');

# now rho_c is 3*H^2/8*PI*G
my $hubble_constant = 67.80;	# +/-0.77, 2013-03-21 Planck Mission

is( HUBBLE_TIME, 1/$hubble_constant, 'Hubble time is the inverse of the hubble constant');


}

done_testing();

__DATA__
# tests that don't work because of constants not yet implemented

is( 4 * STEFAN_BOLTZMANN / SPEED_LIGHT, DENSITY_RADIATION, 
	'The radiation density constant is defined as a = 4 * sigma /c');

is( DENSITY_CRITICAL_RHOc, 3 * $hubble_constant**2 /(8 * PI * GRAVITATIONAL), 
	'critical density of the universe, rho_c, depends on Hubble constant');

is( PARSEC, 648_000 * ASTRONOMICAL_UNIT/PI, 
	'definition of a parsec is 648000/pi AU');
