#!/usr/bin/perl
use strict;
use warnings;

my %codons = 
(
   AUG => "Met",
   UAG => "STOP",
   CGG => "Trp",
   GGG => "Gly"
);

my $code = <>;
while($code ne "\n")
{
   chomp($code);
   if ($code eq "UAG")
   {
      print $codons{$code};
      print "\n";
      last;
   }
   print $codons{$code};
   print "\n";
   $code = <>;
}

