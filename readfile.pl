#!/usr/bin/perl
use strict;
use warnings;
print "Hello world\n";
open(my $in, "<", "test.txt") or die "Can't open input.txt: $!";
while(<$in>) {
    print "$_";
}
=begin comment 
Swagzilla yoloq raise your dongers
=cut
