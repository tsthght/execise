#!/usr/bin/perl

use Config::Tiny;
my $config=Config::Tiny->new();
$config=Config::Tiny->read('c.cnf');
my $ipaddress = $config->{section}->{ipaddress};
printf "$ipaddress\n";
