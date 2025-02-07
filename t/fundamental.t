use Test2::V0;
use Astro::Constants qw( :fundamental );

is(SPEED_LIGHT,       299_792_458,     'SPEED_LIGHT');
is(BOLTZMANN,         1.380649e-23,    'BOLTZMANN');
is(GRAVITATIONAL,     6.6743e-11,      'GRAVITATIONAL');
is(ELECTRON_VOLT,     1.602176634e-19, 'ELECTRON_VOLT');
is(PLANCK,            6.62607015e-34,  'PLANCK');
is(H_BAR,             1.054571817e-34, 'H_BAR');
is(CHARGE_ELEMENTARY, 1.602176634e-19, 'CHARGE_ELEMENTARY');

is(STEFAN_BOLTZMANN,    5.670374419e-08,  'STEFAN_BOLTZMANN');
is(DENSITY_RADIATION,   7.565723e-16,     'DENSITY_RADIATION');
is(WIEN,                0.002897771955,   'WIEN');
is(ALPHA,               7.2973525643e-3,  'ALPHA');
is(VACUUM_IMPEDANCE,  376.730313412,      'VACUUM_IMPEDANCE');
is(PERMITIVITY_0,       8.8541878188e-12, 'PERMITIVITY_0');
is(PERMEABL_FREE_SPACE, 1.25663706127e-6, 'PERMEABL_FREE_SPACE');

no strict 'subs';
unlike(ATOMIC_MASS_UNIT,      qr/d/, "Shouldn't import ATOMIC_MASS_UNIT with :fundamental");
unlike(THOMSON_CROSS_SECTION, qr/d/, "Shouldn't import THOMSON_CROSS_SECTION with :fundamental");

done_testing();
