#!/usr/bin/perl
# ex1
#$line = reverse <STDIN>;
#print "$line\n";

# ex2
$num = "1234567890" x 4;
chomp(@in = <>);
print "$num\n";
foreach (@in) {
	printf "%20s\n", $_;
}

# ex3
$rule = "1234567890";
print "width:\n";
chomp(my $width = <STDIN>);
print "Enter some lines:\n";
chomp(my @lines = <STDIN>);
print "$rule" x (($width+9)/10), "\n";
foreach (@lines) {
	printf "%${width}s\n", $_;
}
