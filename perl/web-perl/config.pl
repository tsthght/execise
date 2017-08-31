#!/usr/bin/perl

use Config::Tiny;
my $config=Config::Tiny->new();
$config=Config::Tiny->read('c.cnf');
my $admin_user = $config->{"mysql-proxy"}->{"admin-username"};
my $admin_pwd = $config->{"mysql-proxy"}->{"admin-password"};
printf "$admin_user => $admin_pwd\n";
