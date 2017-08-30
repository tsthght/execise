#!/usr/bin/perl
# ex1 
while(<>) {
	chomp;
	if (/match/) {
		print "Matched:|$`<$&>$'|\n";
	} else {
		print "No match: |$_|\n";
	}
}

# ex2
while(<>) {
	chomp;
	if (/a\b/) {
		print "Matched:|$`<$&>$'|\n";
	} else {
		print "No match: |$_|\n";
	}
}

# ex3
while(<>) {
	chomp;
	if (/(\w+a)\b/) {
		print "Matched:|$`<$&>$'|\n";
		print "\$1 contains '$1'\n";
	} else {
		print "No match: |$_|\n";
	}
}

# ex4
while(<>) {
	chomp;
	if (/(?<word>\w+a\b)/) {
		print "Matched:|$`<$&>$'|\n";
		print "word contains '$+{word}'\n";
	} else {
		print "No match: |$_|\n";
	}
}

# ex5
while(<>) {
	chomp;
	if (m/(\b\w*a\b)(.{0, 5})/xs) {
		print "$1 => $2\n";
	} else {
		print "No match: |$_|\n";
	}
}

# ex6
while (<>) {
	chomp;
	if(/\s\z/) {
		print "$_#\n";
	}
}
