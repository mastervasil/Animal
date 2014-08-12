package Cow;
use strict;
use utf8;
use warnings;
our $VERSION = '0.01';

use parent qw(Animal);

sub sound {'moooo'};

sub default_color {"white-black"}

1;