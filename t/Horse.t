use strict;
use warnings;

use Test::Output;
use Test::More tests => 2;

BEGIN {
	use_ok('Horse');
}

diag("Testing Horse $Horse::VERSION, Perl $], $^X");

is(Horse->sound, "neigh", "Horse sound is neigh");