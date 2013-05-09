open(IN, "name_seq_oneline_file");

@data = split(/\t/, <IN>);
print ">$data[0]\n$data[1]\n";
