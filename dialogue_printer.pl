#!/usr/bin/perl
use strict;
use warnings;
open(my $in, "<", "test.txt") or die "Can't open input.txt: $!";
open(OUT, ">>", "output.txt") or die "cannot open > output.txt: $!";
my $dialogue = "";
my $quotation_counter = 0;
while(my $ch = getc($in)) {
    if($ch eq "\"")
    {
        if($quotation_counter == 1)
        {
            $quotation_counter = 0;
            $dialogue .= $ch;
            $dialogue =~ s/[\n\r]/ /g;
            $dialogue .= "\n\n\n";
            $dialogue =~ s/\s+/ /;
            print OUT $dialogue;
            $dialogue = "";
        } else {
            $quotation_counter = 1;
            $dialogue .= $ch;
        }
    }else{
        if($quotation_counter == 1)
        {
            $dialogue .= $ch;
        }
    }
}
