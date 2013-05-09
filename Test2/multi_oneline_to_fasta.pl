open(IN, "mutli_namesequence_file");

while($line = <IN>)
{
   @data = split(/\s+/, $line);
   print ">$data[0]\n$data[1]\n";
}
