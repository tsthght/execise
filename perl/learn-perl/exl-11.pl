#!/usr/bin/perl
# ex1
use Module::CoreList;
my %module = %{$Module::CoreList::version{5.010}};
print join "\n", keys %module;

# ex2
use DateTime;
my ($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst) = localtime;
# print "$hour::$mday::$mon::$year","\n";
my $now = DateTime->new(
	year =>$year+1900,
	month =>$mon+1,
	day =>$mday
);
my $then = DateTime->new(
	year =>"$ARGV[0]",
	month =>"$ARGV[1]",
	day =>"$ARGV[2]",
);
my $duration = $now - $then;
my @units=$duration->in_units(qw(years months days));
printf "\n%d years, %d months, %d days\n", @units;


