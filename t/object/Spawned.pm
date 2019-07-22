package Spawned;

use warnings;
use strict;

use IPC::SpawnShared;

sub new {
    my ($class) = @_;
    my $hv = IPC::SpawnShared->spawn;
    $hv->{end} = 0;
    return bless $hv, $class;
}
sub add {
    my ($self) = @_;
    $self->{a}[0]++;
}
sub a0 {
    my ($self) = @_;
    return $self->{a}[0];
}
sub end {
    my ($self, $end) = @_;
    $self->{end} = $end if defined $end;
    return $self->{end};
}
1;


