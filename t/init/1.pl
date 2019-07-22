use warnings;
use strict;

use Data::Dumper;
use IPC::SpawnShared;

my $hv = IPC::SpawnShared->spawn;


$hv->{z} = 26;
$hv->{y}[0] = 'M';

print Dumper $hv;
