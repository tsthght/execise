#!/usr/bin/perl
# ex1
$PI=3.141592654;
$r = 12.5;
$c = ($r * 2 * $PI);
printf "周长: $c\n";

# ex2
printf "请输入半径:\n";
$r = <STDIN> or die $_;
printf "周长: %d\n", ($r * 2 * $PI);

# ex3
printf "请输入半径:\n";
if(($r = <STDIN>) < 0) {
	$r = 0;
}
printf "r = %d\n", $c;
printf "周长: %d\n", ($r * 2 * $PI);

# ex4
$count = 0;
$mul = 1;
printf "请输入2个数字，分两行输入:\n";
while(<STDIN>) {
	$mul*=$_;
	$count++;
	if($count == 2) {
		last;
	}
}
print "乘积: %d\n", $mul;

# ex5
$str;
$times;
$i;
printf("输入一行字符串和一行数字:\n");
while(<STDIN>) {
	$i++;
	if($i == 1) {
		$str = $_;	
	} elsif($i == 2) {
		$times = $_;
		last;
	}
}
printf "%s\n", $str x $times;
