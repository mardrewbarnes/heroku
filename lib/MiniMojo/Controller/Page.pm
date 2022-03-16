package MiniMojo::Controller::Page;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller::REST' }

sub thing : Local : ActionClass('REST') { }

# Answer POST requests to "thing"
sub thing_POST {
   my ( $self, $c ) = @_;
	
   # Return a 200 OK, with the data in entity
   # serialized in the body
   $self->status_ok(
        $c,
        entity => {
            key1 => 'val1',
            key2 => 'val2',
        },
   );
}

=head1 NAME

MiniMojo::Controller::Page - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut


=encoding utf8

=head1 AUTHOR

A clever guy

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
