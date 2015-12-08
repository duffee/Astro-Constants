package Astro::Constants;
# ABSTRACT: this library provides physical constants for use in Astronomy

use strict;
use warnings;
use base qw/Exporter/;

use constant SPEED_LIGHT => 2.997925e8; 	# mks


our @EXPORT_OK = qw( SPEED_LIGHT 
	);


=head1 SYNOPSIS

Remove errors in your code by using verified constants that cannot
be changed.

How easy is it to forget the second equal sign in the equality test?
compare
	$constant == $calculated_value;
with
	$constant = $calculated_value;
Both return true, but the second has changed $constant which is not very,
well, constant.
Using Astro::Constants,
	PI = 3;
is a syntax error and the script doesn't compile meaning that your
bridges won't fall down because you rounded down.


=head1 Thoughts on module design

I've been looking at neil bower's comparison page and I'm faced
with 2 options functions or variables.  I want speed, so 
it's either 
function: constant, Constant::Generate
or 
variable: Lexical::Import, Scalar::Constant

Some of these modules also do lists and hashes

=head1 Plans


=head2 Astro::Constants

=for :list 
* unitless constants PI, etc
* documentation for each constant
* import all by default (how many are there?)

=head2 Astro::Constants::MKS Astro::Constants::CGS

=for :list 
* both have use A::C::? qw/long short mass sun cosmology/;
* nothing is imported by default
* function for reporting which set of constants are used
* strict checking to keep from mixing constants

=head2 build script

=for :list 
* if XML - build modules from XML and astroconst.dat
* no XML - build modules from shipped astroconst.dat
* ask if you want functions or variables
* ask if you want only short or long constants
* ask where your "bundle" file is
* use YAML
* write out astroconst.dat as csv file
* ask if want MKS or CGS as default

=head1 TODO

=for :list

* write script to "add a constant" to the dat/xml files
* build script to create "bundles" of constants?
* write script to verify constant values with NIST using
	hypermedia concepts and RESTful interfaces.  consider
	building an API for others to use
	http://physics.nist.gov/cgi-bin/cuu/CCValue?c
* create objects that understand units
* check out old documentation for more TODOs
* address bug report
* check issues with CPANTS
* add a module for interpolated variables for those people
	who just need to stick the damn things inside strings

=head1 References

=for :list 
* L<http://physics.nist.gov/cuu/Constants/index.html>
* L<http://www.bipm.org>

=head1 SEE ALSO

This list also includes modules on Units.

=for :list
* L<Astro::SLA>
* L<Astro::Cosmology>
* L<Physics::Unit>
* L<Data::Dimensions>
* L<Petrophysics::Units>

=cut

'Perl is my Igor';
