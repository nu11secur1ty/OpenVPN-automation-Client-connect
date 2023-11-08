#!/usr/bin/perl
use strict;
use warnings;
use diagnostics;

# Environment
my $Str1 = "Your_ISP_IP";
my $Str2 = `curl ifconfig.co`;
 
# Remove newline from each string variable
chomp($Str1, $Str2);

# Compare the string variables using 'cmp' operator
my $output = $Str1 cmp $Str2;

# Check the output of the 'cmp' operator
if ($output == 0)
{
	print "Both strings are equal.\n";
	print "You must change the IP\n";
	
	my $new_config = `wget https://downloads.nordcdn.com/configs/files/ovpn_legacy/servers/ba13.nordvpn.com.tcp443.ovpn && mv ba13.nordvpn.com.tcp443.ovpn ge.ovpn`;
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
    print "Now your IP is: $Str2\n";

}
