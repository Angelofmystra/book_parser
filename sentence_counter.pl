#!/usr/bin/perl
use strict;
use warnings;
print "Hello world\n";
open(my $in, "<", "test.txt") or die "Can't open input.txt: $!";
my $sentences = 0;
while(my $ch = getc($in)) {
    if ($ch eq "?" || $ch eq "!" ||  $ch eq ".")
    {
        $sentences++;
    }
}
print("$sentences\n");
=begin comment 
Swagzilla yoloq raise your dongers
=cut
