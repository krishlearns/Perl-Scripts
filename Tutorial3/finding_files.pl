#/usr/bin/perl
use strict;
use warnings;
$|=1;
main();
sub main {

	my @files=('/home/krish/Dropbox/Perl_Scripts/Tutorial3/download.gif',
		'/home/krish/Dropbox/Perl_Scripts/Tutorial3/sajkda.txt',
		'/home/krish/Dropbox/Perl_Scripts/Tutorial3/vinayaga.jpg',
		'/home/krish/Dropbox/Perl_Scripts/Tutorial3/kkkkk.txt',
		);
	foreach my $file (@files){
		if(-f $file) {
			print "File Found : $file \n";
		}
		else {
			print "File NOT found : $file \n";
		}
	}
			
}
