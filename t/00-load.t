#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'IPC::SpawnShared' ) || print "Bail out!\n";
}

diag( "Testing IPC::SpawnShared $IPC::SpawnShared::VERSION, Perl $], $^X" );
