use warnings;
use strict;
use feature 'say';

use lib '.';

use Spawned;
use Data::Dumper;
use IPC::SpawnShared;

my $o = Spawned->new(1234);
$o->add;
$o->add;
$o->add;
$o->add;
$o->add;

$o->{m}{x} = 45;

print Dumper $o;

sleep 2;

$o->end(1);

sleep 1;

IPC::SpawnShared->unspawn(1234, 1);
