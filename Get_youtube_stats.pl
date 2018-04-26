#!/usr/bin/perl
use strict;
use warnings;
use WebService::GData::YouTube;
my $yt=WebService::GData::YouTube->new();
my $profile = $yt->get_user_profile();
my $about_me= $profile->about_me;
print "$$about_me\n";
 
