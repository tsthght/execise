#!/usr/bin/perl
# ex1
my %name = (
	"fred"=>"flintstone",
	"barney"=>"rubble",
	"wilma"=>"flintstone"
);
chomp (my $n = <STDIN>);
if(defined ($name{$n})) {
	printf "$n => $name{$n}\n";
} else {
	printf "$n, find nothing.\n";
}

# ex2
my %count;
while (<>) {
	chomp;
	$count{$_}++;
}
my @key = sort keys%count;
foreach $k (@key) {
	printf "%s => %d\n", $k, $count{$k};
}

# ex3
my @a = sort keys%ENV;
foreach (@a) {
	printf "%s=>%s\n", $_, $ENV{$_};
}
