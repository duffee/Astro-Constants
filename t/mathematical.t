use Test2::V0;
use Astro::Constants qw( :mathematical );

like(PI, qr/3\.14159/, 'PI');
like(EXP, qr/2\./, 'e');

done_testing();
