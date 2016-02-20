use Test::More;
use Test::Number::Delta;
use Astro::Constants::MKS qw/:long/;

diag("Testing values found in IAU 2009/2012 System of Astronomical Constants");

is(SPEED_LIGHT, 299_792_458, 'SPEED_LIGHT');
delta_within(ASTRONOMICAL_UNIT, 149_597_870_700, 100, 'ASTRONOMICAL_UNIT in metres');

subtest body => sub {
	delta_within(GRAVITATIONAL * MASS_SOLAR, 1.327_124_4e20, 1e13, 'Solar mass parameter [varies on TCB/TDB]');
	delta_within(RADIUS_EARTH, 6_378_136.6, 0.1, 'Equitorial radius for Earth [TT]');
	delta_within(GRAVITATIONAL * MASS_EARTH, 3.986_004e14, 1e8, 'Geocentric gravitational constant [varies on TT/TCB/TDB]');
	delta_within(MASS_LUNAR/MASS_EARTH, 1.230_003_71e-2, 4e-10, 'Mass Ratio: Moon to Earth');
};

subtest cartographic => sub {
	delta_within(RADIUS_LUNAR, 1_737_400, 1e3, 'Equitorial radius for the Moon [mean]');
	delta_within(RADIUS_SOLAR, 696_000_000, 1e3, 'Equitorial radius for the Sun');
};

subtest Other => sub {
	delta_within(MASS_EARTH/MASS_LUNAR, 81.300_568, 3e-6, 'Mass Ratio: Earth to Moon');
	delta_within(MASS_SOLAR/MASS_EARTH, 332946.0487, 0.0007, 'Mass Ratio: Sun to Earth');
	delta_within(MASS_SOLAR, 1.9884e30, 2e26, 'MASS_SOLAR');
	delta_within(MASS_EARTH, 5.9722e24, 6e20, 'MASS_EARTH');
};


TODO: {
	local $TODO = 'When all the constants are tested, remove the write bit';

	is(GRAVITATIONAL, 6.674_28e-11, 'GRAVITATIONAL IAU 2009/20012 corresponds to 2006 CODATA');
	ok( ! -w "t/mks.t", "For safety, this test file should be read-only.");
}

done_testing();
