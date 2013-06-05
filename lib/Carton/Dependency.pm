package Carton::Dependency;
use strict;
use Moo;

has module  => (is => 'rw');
has requirement => (is => 'rw');
has dist    => (is => 'rw', handles => [ qw(prereqs) ]);

sub distname {
    my $self = shift;
    $self->dist->dist;
}

1;
