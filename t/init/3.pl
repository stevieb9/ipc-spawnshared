use warnings;
use strict;

use Data::Dumper;
use IPC::SpawnShared;
use Test::More;

my $hv = IPC::SpawnShared->spawn;

is $hv->{z}, 81, "updated hash 'z' ok";
is @{ $hv->{y} }, 11, "'y' array updated ok as well";

is ++$hv->{z}, 82, "updated hash 'z' ok";
is push(@{ $hv->{y} }, 11), 12, "'y' array updated as well";

print Dumper $hv;

IPC::SpawnShared->unspawn;

done_testing();
