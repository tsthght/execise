#!/usr/bin/perl
use strict;
# 1 HASH key唯一
my %hash_1=("a" => 1, "b" => 2, "c" => 3);
print "hash_1=$hash_1{b}\n";
# 2 HASH中的空格和引号
my %hash_2=(a=>1,b=>2,c=>3,);
print "hash_2=$hash_2{c}\n";
# 3 HASH元素个数
my %hash_3=(1=>"a",2=>"b",3=>"c");
my $len = keys%hash_3;
print "hash_3=$hash_3{2}, num=$len\n";
# 4 HASH 存取
my %hash_4=(a=>1, b=>2, c=>3);
my $value = $hash_4{b};
print "value=$value\n";
$hash_4{b} = 'b' x 4;
print "value=$hash_4{b}\n";
foreach my $ky (keys%hash_4) {
	print "$ky => $hash_4{$ky}\n";
}
delete $hash_4{b};
while(my ($k, $v) = each %hash_4) {
	print "$k => $v\n";
}
# 5 重复
my %hash_5=(a=>1, b=>2, c=>3, a=>4);
foreach my $i (keys%hash_5) {
	print ">>$i => $hash_5{$i}\n";
}
$value = $hash_5{a};
print "values=$value\n";
# 6 和数组
my %hash_6=(a=>1, b=>2, c=>3);
my @array = %hash_6;
foreach my $v (@array) {
	print ">>$v\n";
}
for(my $i=0; $i< $#array; $i++) {
	print "::$array[$i]\n";
}
