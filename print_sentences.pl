#!/usr/bin/perl
use strict;
use warnings;
open(my $in, "<", "test.txt") or die "Can't open input.txt: $!";



my $sentence = "";
my $sentence_count = 0;
while(my $ch = getc($in)) {
    if($ch ne "\n" || $ch ne "\r")
    {
        $sentence .= $ch;
    }
    if ($ch eq "?" || $ch eq "!" ||  $ch eq ".")
    {
        my $remove_space_after_sentence = getc($in);
        if($remove_space_after_sentence eq "\"")
        {
            $sentence .= $remove_space_after_sentence;
        }
        if($remove_space_after_sentence eq "\n" || $remove_space_after_sentence eq "\r" || $remove_space_after_sentence eq "\s")
        {
        }
        $sentence_count++;
        $sentence =~ s/\s+/ /;
        if(substr($sentence, 0, 1) eq " ")
        {
            $sentence = unpack "xA*", $sentence;
        }
        print("$sentence_count: $sentence\n");
        $sentence = "";
    }
}
