package Animal;
use strict;
use utf8;
use warnings;
use parent qw(LivingCreature);
our $VERSION = '0.01';


sub speak {
	my $class = shift;
	$class->LivingCreature::speak;
}

sub sound {
	die "all Animals should define a sound";
}

1;