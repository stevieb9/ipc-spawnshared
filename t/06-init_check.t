use warnings;
use strict;

use Data::Dumper;
use IPC::SpawnShared;
use Test::More;

my $hv = IPC::SpawnShared->spawn;

is $hv->{z}, 26, "init test set up hash 'z' ok";
is $hv->{y}[0], 'M', "...as well as the 'y' array ref";

for (0..10){
    $hv->{z} += $_;
    $hv->{y}[$_] = $_;
}

is $hv->{z}, 81, "updated hash 'z' ok";
is @{ $hv->{y} }, 11, "'y' array updated ok as well";

print Dumper $hv;

done_testing();
