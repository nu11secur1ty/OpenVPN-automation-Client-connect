#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;
# @by nu11secur1ty 2023

# Environment
my $Str1 = "Your_ISP_IP";
my $Str2 = `curl ifconfig.co`;
 
# After checking the IP the curl process will be killed, this is a prevention against clogged MTU channel, if it is!
sleep 7;
my $time_check = `bash curl_killer.sh`;
print "Your IP checking is finished!\n";

# Remove newline from each string variable
chomp($Str1, $Str2);

# Compare the string variables using 'cmp' operator
my $output = $Str1 cmp $Str2;

# Check the output of the 'cmp' operator
if ($output == 0)
{
	print "Both strings are equal.\n";
	print "You must change the IP\n";

        my $stopper = `bash openvpn_killer.sh`;
	my $new_config = `wget https://your/IP-VPN/provider/taratnci.ovpn && mv taratnci.ovpn configvpn.ovpn`;
	# cleaning if you need ;)
	# my $clean = `rm *.nordvpn.com.*`;
	
	print "Please wait...\n";
	sleep 7;
	my $execute = `perl starter.pl`;
	print "Wait to checking the current IP\n";
	sleep 11;
	my $check_IP_Again = `curl ifconfig.co`;
	print "Now your IP is: $check_IP_Again\n";
}

elsif($output  == 1)
{
	print "$Str1 is greater than $Str2\n";
	print "They are not equl, and the current IP is: $Str2!\n"; 
	print "Everything is ok!\n";	
}
	else
	{
    print "$Str1 is less than $Str2\n";
    print "You must changing your ip!\n";
    print "Now your IP is: $check_IP_Again\n";

}
