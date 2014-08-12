#!/usr/bin/perl -w
use utf8;
# use warnings;
# use diagnostics;
use strict;

use Cow;
use Mouse;
use Sheep;
use Horse;
use Person;

# print "Enter animals\n";
# my $animals = <STDIN>;
my $animals = "cow horse mouse sheep person";
my @animals = map {s/(.*)/\L\u$1/r} split /\W+/, $animals;

# for my $animal (@animals) {
# 	$animal->speak("Hello, World!");
# }

my $tv_horse = Horse->named('Mr. Ed');
$tv_horse->name('Mister Ed');
$tv_horse->color('grey');
print $tv_horse->name, ' is ', $tv_horse->color, "\n";
print Cow->name, ' color ', Cow->color, ' goes ',
	Cow->sound, "\n";

$tv_horse->speak("aa");
$tv_horse->speak("aa");