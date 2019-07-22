use warnings;
use strict;
use feature 'say';

use lib '.';

use Spawned;
use Data::Dumper;
use IPC::SpawnShared;

my $o = Spawned->new(1234);
print Dumper $o;
$o->add;

while (1){
    last if $o->end;
    print Dumper $o;
    sleep 1;
}

