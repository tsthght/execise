#!/usr/bin/perl
# exe1 
print "hello, world";

# exe2
@ret = `perldoc -u -f atan2`;
print @ret;

# exe3
@lines = `perldoc -u -f atan2`;
foreach (@lines) {
	s/\w<([^>])>/\U$1/g;
	print;
}
