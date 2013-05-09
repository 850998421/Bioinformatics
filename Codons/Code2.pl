#!/usr/bin/perl
use strict;
use warnings;


# Read in Codon key value table

my %codons;
open(DATA, "Codons.txt") || die("File 'Codons.txt' not found.");
while (my $temp = <DATA>)
{
   chomp($temp);
   (my $key, my $value) = split(/ /,$temp);
   $codons{$key} = $value;
}
close(DATA);


# Read in and translate

my $fullCode = <>;
chomp($fullCode);
my $code;
while(length($fullCode))
{
   # get leftover code, if full code is not multiple of 3
   if(length($fullCode) < 3)
   {
      printf("\n%d leftover: %s", length($fullCode), uc $fullCode);
      last;
   }

   # get next 3 letters of fullCode, and convert to uppercase
   $code = uc substr($fullCode, 0, 3);

   # print value if code exists, if not, print wrong code
   if(exists $codons{$code})
   {
      print $codons{$code};
   }
   else
   {
      printf("_%s_", $code);
   }
   print " ";
   
   # shift fullCode over by the 3 used letters
   $fullCode = substr($fullCode, 3);
}

print "\n";
