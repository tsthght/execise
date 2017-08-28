#!/usr/bin/perl
# ex1
@lines = reverse <STDIN>;
s/^[\s|\n]+(.*?)$/$1\n/ foreach @lines;
print @lines;

# ex2
%names = (
	"1" => "fred",
	"2" => "betty",
	"3" => "barney",
	"4" => "dino",
	"5" => "wilma",
	"6" => "pebbles",
	"7" => "bamm-bamm"
);
while(<STDIN>) {
	chmop;
	s/(.*)\n/$1/;
	printf "%d => %s\n", $_, $names{$_};
}

# ex3
@lines=<STDIN>;
@sorted=sort @lines;
print @sorted;
