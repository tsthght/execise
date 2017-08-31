#!/usr/bin/perl
# ex1 ex2
use 5.010;
my $magic=int(1+rand 100);
my $Debug = $ENV{DEBUG};
print "magic is $magic\n" if $Debug;
while (<>) {
	# pay attention to /a!
	last if (/exit/||/quit/||/\a\s+/);
	if($_ == $magic ) {
		print "you win\n";
		last;
	} elsif ($_ > $magic) {
		print "Too high\n";
	} else {
		print "Too low\n";
	}
}

# ex3
$ENV{AAA} = undef;
my $long = 0;
foreach $key (keys %ENV) {	
	$long = $long>=$key? $long:$key;
}
foreach $key (sort keys %ENV) {
	printf "%-${long}s  %s\n", $key, $ENV{$key}//"(undefined)" ;
} 
