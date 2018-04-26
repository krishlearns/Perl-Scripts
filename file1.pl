#!/usr/bin/perl
@array=qw(abc def ghi);
push (@array,klm);
print "@array \n";
unshift(@array,aaa);
print "@array\n";


__END__
use strict;
print $0."\n";
print __FILE__. __LINE__."\n";
print __FILE__."\n";
do 'file2.pl';
use LWP::Simple;
Get_page();
sub Get_page {
    my $content=get("http://pbskids.org");
    print __PACKAGE__."\n";
}

