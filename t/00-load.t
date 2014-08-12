#!perl -T
use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;

plan tests => 7;

BEGIN {
	my @classes = qw(Animal Cow Horse Sheep Mouse LivingCreature Person);
	for my $class (@classes) {
		use_ok($class) 
		  or print "Bail out! $class does not compile!\n";
	}
}

diag( "Testing Animal $Animal::VERSION, Perl $], $^X" );
