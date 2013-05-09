#!usr/bin/perl

my %table;
my $name;

while($name ne "end") {
   $name = <>;
   my $value = <>;

   chomp($name);
   chomp($value);
   if ($value > 4) {
      $value{$name}++;
   }
}

while($name = <>) {
   chomp($name);
   print "$name has been seen $value{$name} times\n";
}
