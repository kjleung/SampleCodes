#!/usr/bin/perl -w

use strict;

my @ip = qw(1.1.2.2 34.56.121.3 4.34.6.23 72.54.0.1);

my @sortedip = sort sortByIP @ip;

foreach (@sortedip) {
	print;
	print "\n";
}

sub sortByIP {
	my @a = split(/\./, $a);
	my @b = split(/\./, $b);
	if ($a[0] == $b[0]) {
		if ($a[1] == $b[1]) {
			if ($a[2] == $b[2]) {
				return $a[3]<=>$b[3];
			} else {
				return $a[2]<=>$b[2];
			}
		} else {
			return $a[1]<=>$b[1];
		}
	} else {
		return $a[0]<=>$b[0];
	}
} 
