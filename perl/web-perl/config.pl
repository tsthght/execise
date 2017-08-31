#!/usr/bin/perl

use Config::Tiny;
my $config=Config::Tiny->new();
$config=Config::Tiny->read('source.cnf');
my $admin_user = $config->{"mysql-proxy"}->{"admin-username"};
my $admin_pwd = $config->{"mysql-proxy"}->{"admin-password"};
# modify
$config->{"mysql-proxy"}->{"proxy-backend-addresses"} = "127.0.0.1:6000";
$config->write("source.cnf");
printf "$admin_user => $admin_pwd\n";
