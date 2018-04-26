#!/usr/bin/perl
#urlify - wrap HTML links around URL-like constructs
$urls=’(http|telnet|gopher|file|wais|ftp)’;
$ltrs=’\w’;
$gunk=’/#~:.?+=&%@!\-’;
$punc=’.:?\-’;
$any="${ltrs}${gunk}${punc}";
print "$any\n";
