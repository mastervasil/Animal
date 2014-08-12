use strict;
use warnings;

use Test::Output;
use Test::More tests => 6;

BEGIN {
	require_ok('Animal') || print "Bail out!\n";
}

diag("Testing Animal $Animal::VERSION, Perl $], $^X");

ok(defined &Animal::speak, 'Animal::speak is defined');
ok(defined &Animal::sound, 'Animal::sound is defined');

my $at;
eval {Animal->sound()} or $at = $@;
like($at, qr/should define a/, 'sound() dies with a message');

eval {Animal->speak()} or $at = $@;
like($at, qr/should define a/, 'speak() dies with a message');

{
	package Foofle;
	use parent qw(Animal);
	sub sound {'foof'}

	Test::Output::stdout_is(
		sub {Foofle->speak}, 
		"a Foofle goes foof!\n",
		'An animal subclass does the right thing'
		);
}