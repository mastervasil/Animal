package LivingCreature;
use strict;
use utf8;
use warnings;
our $VERSION = '0.01';

sub speak {
	my $class = shift;
	if (@_) {
		print "a $class says $_[0]\n";
	} else {
		print "a $class goes ", $class->sound, "!\n";
	}
}



1;