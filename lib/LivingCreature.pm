package LivingCreature;
use strict;
use utf8;
use warnings;
our $VERSION = '0.01';

sub speak {
	my $either = shift;
	if (@_) {
		print $either->name, " says ", $_[0], "\n";
	} else {
		print $either->name, " says ", $either->sound, "\n";
	}
}



1;