#!/usr/bin/perl
use strict;
use warnings;
use LWP::Simple;
main();

sub main {
    print "Downloading ... \n";
#    print get("http://redbus.com"); 
    my $status=getstore('http://www.kidschooljapan.com/_images/programs/giraffe_button.gif',"download.gif");
    if ($status == 200 ) {
        print "Success \n";
    }
    else {
        print "Oops ... Failed  \n";
    }
    print "Finished \n";

}
