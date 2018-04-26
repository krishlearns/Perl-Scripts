#!/usr/bin/perl
for($i=100;$i<255;$i++) {
    `ping -c1 192.168.0.$i`;
    if ( $? == 0 ) {
        print "192.168.0.$i :  Reachable\n";
    }
    
}
