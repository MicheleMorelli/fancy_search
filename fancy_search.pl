#!usr/bin/perl -w
use strict;

#fancy search tool

my $tot = 0;
my $l = 0;
print "Which expression do you want t look for?";
chomp(my $in = <STDIN>);

while (<>){
        $l++;
        next unless (m#($in)#igp);
        print "LINE $l:\t",${^PREMATCH},"|>>>[",$1,"]<<<|",${^POSTMATCH};
        $tot++;
}

print "*"x20,"\n\nNumber of matches: $tot \n\n", "*"x20,"\n";
