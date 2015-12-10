#!perl -T

use Test::More;
use Astro::Constants::CGS qw/CHARGE_ELEMENTARY SPEED_LIGHT /;

diag("When functioning, this test suite will check that the MKS and CGS versions of each constant are equivalent");
diag("TODO: get the MKS values from the MKS module");

my $charge_elementary_mks = 1.6021766208e-19;
is( $charge_elementary_mks * SPEED_LIGHT/10, CHARGE_ELEMENTARY, 'elementary charge conversion');


done_testing();
