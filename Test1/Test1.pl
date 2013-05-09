#!/usr/bin/perl
use strict;
use warnings;

my $name1 = "Jacob";
my $name2 = "myself";
if (@ARGV > 1)
{
   $name1 = $ARGV[0];
   $name2 = $ARGV[1];
}

print "I am $name1 III and I'm in love with $name2\n" ;

my $range = 6;
my $dice = rand($range);

printf ("You rolled a %.2f\n", $dice);

my $count = 5;
while($count > 0)
{
   print "$count\n";
   $count = $count - 1;
}

