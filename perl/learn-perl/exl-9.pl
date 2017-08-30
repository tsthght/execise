#!/usr/bin/perl
# ex1
chomp (my $in = <>);
$what="abc";
if($in =~ /($what){2}/) {
	print "matched\n";
} else {
	print "not matched\n";
}
