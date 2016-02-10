#!perl -T

use Test::More;
use Astro::Constants::MKS qw/STEFAN_BOLTZMANN SPEED_LIGHT 
	ALPHA GRAVITATIONAL PI PARSEC ASTRONOMICAL_UNIT
	/;



is( ALPHA, sprintf("%.13f", 1/137.035999139), 'fine structure constant to within 2.3e-10');

# now rho_c is 3*H^2/8*PI*G
my $hubble_constant = 67.80;	# +/-0.77, 2013-03-21 Planck Mission

#is( HUBBLE_TIME, 1/$hubble_constant, 'Hubble time is the inverse of the hubble constant');

cmp_ok( abs(PARSEC - (648_000 * ASTRONOMICAL_UNIT/PI)), '<', 13675, 'definition of a parsec is 648000/pi AU');


done_testing();
