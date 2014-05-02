#!/usr/bin/perl -w

use strict;

my @hosts = ("ec2-107-22-132-217.compute-1.amazonaws.com","ec2-54-87-69-53.compute-1.amazonaws.com");

foreach (@hosts) {

exec(knife ssh -i $key $_ 'chef_client');
exec(knife ssh -i $key $_ '/etc/init.d/httpd restart');
}
