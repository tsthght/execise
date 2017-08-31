#!/usr/bin/perl
# ex1
chomp (my $in = <>);
$what="abc";
if($in =~ /($what){2}/) {
	print "matched\n";
} else {
	print "not matched\n";
}

# ex2
# my $in = $ARGV[0];
my $in = "exl-9.txt";
if(!defined $in) {
	die "Usage: $0 filename.\n";
}
my $out = $in;
$out  =~ s/(\.\w+){1}/.out/;
printf "$out\n";
if(! open $in_fh, "<", $in) {
	die "Can't open $in:$!\n";;
}
if(! open $out_fh, ">", $out) {
	die "Can't open $out:$!\n";
}
while(<$in_fh>) {
	print;
	s/Fread/Larry/gi;
	print $out_fh $_;
}
close in_fh;
close out_fh;

# ex3
while (<STDIN>) {
	s/Fred/#/g;
	s/Wilma/Fred/g;
	s/#/Wilma/g;
	print;
	print "\n";
}

# ex4 
$^I = ".bak";
while(<>) {
	if(/\A#!/) {
		$_ .= "## cOPYRIGHT (c) 2017 BY Yours Truly\n";
	}
	print;
}

# ex5 略
