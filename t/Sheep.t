use strict;
use warnings;

use Test::Output;
use Test::More tests => 2;

BEGIN {
	use_ok('Sheep');
}

diag("Testing Sheep $Sheep::VERSION, Perl $], $^X");

is(Sheep->sound, "baaaah", "Sheep sound is baaaah");