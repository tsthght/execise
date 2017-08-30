#!/usr/bin/perl
# ex1
while (<>) {
	chomp;
	if(/fred/) {
		print $_, "\n";
	}
	if(/Fred/ or /frederick/ or /Alfred/) {
		print "is print?(y|n):";
		chomp ($yes = <STDIN>);
		if($yes =~ /y/) {
			print $_, "\n";
		}
	}
}
# ex2 略

# ex3
while (<>) {
	chomp;
	if(/\./) {
		print;
		print "\n";
	}
}

# ex4 略

# ex5 
while (<>) {
	chomp;
	if(/(\S+)\1/) {
		print;
		print "\n";
	}
}

# ex6
while (<>) {
	chomp;
	if(/wilma.*fred/|/fred.*wilma/) {
		print;
		print "\n";
	}
}
