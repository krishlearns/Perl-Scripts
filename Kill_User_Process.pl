#!/usr/bin/perl
use strict;
use warnings;

if ($>==0 ) {
    my $uid=getpwnam("krishna") ; # get uid of "krishna"
    print "$uid\n";

    #setuid to "krishna"
    ($<,$>)=($uid,$uid);
   die "Oops .. setuid($uid) failed " unless($< == $uid && $>==$uid);

}
    

