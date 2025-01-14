#!/usr/bin/perl -T

use Test2::V0;
eval "use Test::Pod 1.14";
plan skip_all => "Test::Pod 1.14 required for testing POD" if $@;

# TODO accept this directive that we use in Pod::Weaver
# need to insert this line in Test::Pod::pod_file_ok
# $checker->accept_directive_as_data( 'constant' );

todo 'make test accept Pod::Weaver directive =constant' => sub {
    all_pod_files_ok();
    note 'Ignore all failures due to "Unknown directive: =constant"';
};

done_testing();
