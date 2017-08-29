#!/usr/bin/perl
# ex1
my @array=qw\ 1 3 5 7 9\;
sub total{
	my $sum = 0;
	foreach (@_) {
		$sum +=$_;
	}
	$sum;
}
$s = &total(@array);
print "$s\n";

# ex2
print "sum: ", total(1..1000). "\n";

# ex3
sub ave {
	my $c = 0;
	my $r = 0;
	foreach (@_) {
		$c+=1;
		$r+=$_;
	}
	$r/$c;
}
sub above_ave {
	$ave = &ave(@_);
	@ret;
	foreach (@_) {
		#printf "%d=>%d\n", $_, $ave;
		push @ret, $_ if $_ > $ave;
	}
	@ret;
}
my @ret=&above_ave(@array);
print "@ret\n";

# ex4
use 5.010;
sub greet {
	state $last_person;
	my $name = shift;
	print "Hi, $name";
	if(defined $last_person) {
		print "$last_person is also here!\n";
	} else {
		print "You are the first one here!\n";
	}
	$last_person = $name;	
}
&greet("Fred");
&greet("Barney");

# ex5
use 5.010;
sub greet1 {
	state @la;
	my $name = shift;
	if(@la) {
		print "Hi $_, you have seen :@la\n";
	} else {
		print "Hi $_, you are the first one here\n";
	}
	push @la, $name;
}
&greet1("Fred");
&greet1("Barney");
&greet1("Wilma");
&greet1("Betty");
