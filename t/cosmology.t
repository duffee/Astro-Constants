use Test2::V0;
use Astro::Constants qw( :cosmology );

is(SOLAR_V_MAG, -26.74, 'SOLAR_V_MAG');
is(CMB_TEMPERATURE, 2.72548, 'CMB_TEMPERATURE');
like(PARSEC, qr/\d/, 'PARSEC');
like(LIGHT_YEAR, qr/\d/, 'LIGHT_YEAR');

done_testing();
