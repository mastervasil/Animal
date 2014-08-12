package Animal;
use strict;
use utf8;
use warnings;
use parent qw(LivingCreature);
our $VERSION = '0.01';

use Carp qw(croak);


sub speak {
	my $class = shift;
	$class->LivingCreature::speak;
}

sub default_color {"brown"}

sub sound {
	croak "subclass must define a sound";
}

sub named {
	my ($class, $name) = @_;
	ref($class) and croak "class name needed";
	bless {name => $name, color => $class->default_color}, $class;
}

sub name {
	&setGetParam($_[0], "name", $_[1], "unnamed");
}

sub color {
	my ($either, $value) = @_;
	&setGetParam($_[0], "color", $_[1], $either->default_color);
}

sub setGetParam {
	my ($instance, $param, $value, $default) = @_;
	unless (ref $instance) {
		return $default;
	}
	if (defined $value) {
		if (defined wantarray) {
			my $lastValue = $instance->{$param};
			$instance->{$param} = $value;
			$lastValue;
		} else {
			$instance->{$param} = $value;
		}
	} else {
		$instance->{$param};
	}
}

sub toString {
	my $instance = shift;
	ref($instance) 
		. ": name=" . $instance->{name} 
		. ", color=" . $instance->{color} 
		. "\n";
}

1;