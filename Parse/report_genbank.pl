open (IN, "2.gb");

while (<IN>) {
   if (/LOCUS\s+([\d\w]+)/) {
      print "$1\n";
   }
   elsif (/VERSION.+GI:([\d\w]+)/) {
      print "$1\n"; 
   }
   elsif (/AUTHORS\s+([^,]+)/) {
      print "$1\n";
   }
   elsif (/CDS\s+(\d+..\d+)/) {
      print "$1\n";
   }
   elsif (/^\s+\d+\s+(.+)/) {
      $seq = $1;
      $seq =~ s/\s+//g;
      print "$seq\n";
   } 
   elsif (/translation="([A-Z]+)/) {
      $seq_aa = $1;
      $tempLine = $_ =~ s/translation="//g;
      while ($tempLine !~ '"') {
         $tempLine = <IN>;
         $tempLine =~ s/\s+//g;
         $seq_aa .= "\n$tempLine";
      }
      $seq_aa =~ s/"//g;
      print "$seq_aa\n";
   }
}
close (IN);
