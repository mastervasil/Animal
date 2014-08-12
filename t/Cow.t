use strict;
use warnings;

use Test::Output;
use Test::More tests => 2;

BEGIN {
	use_ok('Cow');
}

diag("Testing Cow $Cow::VERSION, Perl $], $^X");

is(Cow->sound, "moooo", "Cow sound is moooo");