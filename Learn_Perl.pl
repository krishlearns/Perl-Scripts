#!/usr/bin/perl

__END__
my @strings = qw(kitten puppy vulture);
my @complex = map { [ $_, length($_) ] } @strings;
my %complex = map { $_ => [ uc $_, length($_) ] } @strings;

foreach $x (@complex) {
    print "@$x \n";
}


__END__
use strict;
use warnings;
my @a=map{$_,map{$_ * $_}(1..$_)}(1..5);
print "@a";


__END__
use strict;
use warnings;
#To find new salary
my @sals=qw(5000 7000 9000 12000 15000);
print "Old sals : @sals \n";
my @newsals=map{newsal($_)} @sals;
print "New Sals : @newsals\n";

sub newsal {
    my $sal=$_[0];
    my $newsal=(($sal*1.10)+1600);
    return $newsal;

}

__END__
use strict;
use warnings;
my @nums=qw(1 2 3 4 5 );
my @nums1=map{$_+10} @nums;
print "@nums \n";
print "@nums1 \n";

sub otal {
    
}

__END__
use strict;
use warnings;
my @randnums=map{rand(100)}(1..100);
my @roundnums=map{int} @randnums;
my @sqrts=map{sqrt} @roundnums;
print "@roundnums";
print "\n\n";
print "@sqrts";
print "\n\n";
my $length= map {length} @roundnums;
print "$length";

__END__
print "@randnums";
print "\n\n";
my @selectnums=grep($_>.75,@randnums);
print "@selectnums";
my @sqnums=map{$_ * $_ } @selectnums;
print "\n\n";
print "@sqnums";



__END__
use strict;
use warnings;
my @nums=qw( 1 2 3 4 5) ;
my @sqres=map{$_ * $_} @nums;
print "@sqres";



__END__
use strict;
use warnings;
my @randnums=map{rand()}(1..100);
print "@randnums";
print "\n";
my @extractnums=grep($_ > .5,@randnums);
print "@extractnums";
my @sqofbignums=map{$_ * $_} @extractnums;
print "\n";
print "@sqofbignums";



__END__
use strict;
use warnings;
my @names=qw(krish aruna pranav diya);
my @ucnames=map(ucfirst, @names);
print "@ucnames";


__END__
use strict;
use warnings;
my @names=qw(Foo Zoo Moo Roo Font);
my @invited=map{$_=~/^F/ ?($_=>1) : () } @names;
print "@invited";


__END__
use strict;
use warnings;
my @numbers=(1,2,3,4,5);
print "@numbers \n";
my @doubles=map{$_ * 2} @numbers;
print "@doubles \n";

__END__
#To Kill User's mail process
use strict;
use warnings;
if ($> ==0) {
    my $uid=getpwnam("www-admin") or die "can't find uid for www-admin";
    ($<,$>)=($uid,$uid);
    if(!$< == $uid && $>==$uid) {
        die "setuid($uid) for www-admin failed";
    }
    die "Usage: killwingproc username ...\n"
    unless @ARGV;
    
}






__END__
#Find Docroot from httpd.conf for VirtualHosts
use strict;
use warnings;
open(FILE,"httpd.conf");
while(<FILE>) {
    next if($_!~/\s*<VirtualHost\s+([^>\s]+)\s*>/);
    my $vhost=$1;
    print "$vhost\n";
    while(<FILE>) {
        if(m|\s*</VirtualHost|) {
            die " Could not find Docroot";
        }
        if(/^\s*DocumentRoot\s*([^>\s]+)/) {
            print "$vhost   :   $1\n";
            last;
        }
    }
}


__END__
#print substring in each line from position to position 
use strict;
use warnings;
open(FILE,"testfile");
print "From Position :";
chomp(my $offset=<>);
print "To Position  :";
chomp(my $to=<>);

#print the chars from 11 to 20 in each line 
while(<FILE>) {
   next if ($_=~/^$/);
   my $substring=substr($_,$offset,$to);
   print "$substring\n";
}


__END__
$y="hello";
$x=qx{this is $y};
print "$x";

__END__

%hash=(Orange => "1Kg", Manggo =>"2 Kgs", Banana =>"1 Kg", Watermelon=>"6 Kgs");
while(($fruit,$weight)=each(%hash)) {
    print "$fruit : $weight\n";
}
@keys=keys(%hash);
print @keys;
@values=values(%hash);
print @values;
if (exists $hash{'Orange'}) {
    print "\n --- Yes\n";
}

__END__
foreach $key (sort keys %hash) {
    print "$key -> $hash{$key}\n";
}
%hash_copy=%hash;
delete $hash_copy{'Mango'};
print %hash_copy;
$hash_copy{'Grapes'}=1;
print "\n";
print %hash_copy;



__END__

print " lets celebrate \n";
print (int rand(10),"\n");
print `date`;

BEGIN {
    print " Hello Welcome \n";
}

END {
    print " Done , Congrats \n";
}


__END__


while ($x++<=10) {
    print "$x";
    redo if ($x==7);
}


__END__

for ($x=0;$x<=10;$x++ ) {
    last if ($x==8);
    next if ($x==2);
    print "$x";
}


__END__
$x=0;
print "\*" while ($x++<=100); 
$x++;


__END__

open(FILE,"test") || die "Oops $!";
while(<FILE>) {
    if($_=~//) {
        print "$_";
    }
}



__END__

    if ($_=~/\d+/) {
        print "$_\n";
    }
}





__END__
$line="I am being proud to be an Indian than a Tamilan";
@words=split(/ /,$line);
print "@words \n";


__END__
print " Ask some thing :";
$x=<>;
if ($x=~/Please/i) {
    print " Good , You are polite";
}


__END__

open(MESSAGE,"|mail krishnakanthrv@yahoo.com");
print MESSAGE "Hello How are you";
close(MESSAGE);


__END__
while ($input=<>) {
    print "$input";
}

__END__
$file=$ARGV[0];
if (-e $file && -r $file && -w $file ) {
    print " File exists. It is readble and writable";
}
elsif ( -e $file && -r $file ) {
    print " File exists. It is readble But NOT  writable";
}
    



__END__

open(INFILE,"test") && (-e "out.txt") && open(OUT,">out,txt") || die "Oops $!";

__END__
if ( -e "test") {
    print "Oops file already exists";
}


__END__
open(FILE,"test") || die "Oops $!";
while (<FILE>) {
    print;
}


__END__
use List::MoreUtils qw(uniq);
use Data::Dumper qw(Dumper);
my @words=qw(krish krishna krishnakanth krish);
my @unique=uniq(@words);
print Dumper \@unique;
push(@words,@ARGV);
print "@words \n ";
unshift(@words,Jimikki);
print "@words \n";
pop @words;
print "@words \n";
print (shift @words, "\n");
print (pop @words,"\n");


__END__

@array=qw(krishna kanth aeuna devi selva pranav diya smriti);
@array=();
print "@array\n";




__END__

$str="Hello welcome to the spectacular life of Krishnakanth";

@array=split(/ /,$str);

print "@array";
print "\n";
print scalar @array;



__END__
@array=qw(krishna kanth aruna devi);
print "@array\n";
$str=join("",@array);
print "$str";


__END__
@nums=(1..20);
@sorted=reverse sort(@nums);
print "@sorted";




__END__
print "@nums \n";

splice(@nums,5,5,"* " x5);

print "@nums";

__END__

@array=(12,13,14);
@array1=qw( 12 13 14 );
@x=("tamil","English","Science");
@y=qw(Tamil English Sceience);
$x=0;

print scalar @array;

__END__

while ($x <=@array) {
    print $array[$x];
    $x++;
}




__END__
$length=@array;
($value)=@array;

print "$length \n $value";



__END__

print( "*" x25, "\n","This is a Test " , "\n", "*" x25,"\n" );


__END__

print "*" x25;


__END__
print " First Name : ";


chomp($fname=<>);
print "Lastname : ";
chomp($lname=<>);
$mail="$fname"."\."."$lname"."\@valuelabs\.com";

print "$mail";



__END__

$x=0;

print "Preincremnt";

while(++$x<=5) {
    print "$x ";
}

$y=0;
print "Post increment \n";

while($y++<=5) {
    print "$y ";
}

__END__
print "Enter lab marks :";
chomp($labmarks=<>);
print "Enter the Marks :";
chomp($marks=<>);
$total=$labmarks+$marks;
if ($labmarks>20 && $marks >30 && $total >50 && $total<60) {
    print "Pass && Second class";
}
elsif($labmarks>20 && $marks >30 && $total >60 && $total<75) {
    print "Pass && Firstclss";
}
elsif ($labmarks>20 && $marks >30 && $total<75){
    print "Disticntion\n";
}
else {
    print " Fail , Reappear Again you fool \n";
}


__END__

print "Enter Value :";
chomp($x=<>);
$y=$x<=>10;
if ($y ==1 ) {
    print "$x is > 10\n";
}
elsif($y==-1) {
    print "$x is < 10\n";
   }
else{
    print "$x is equalto 10 \n";
}

__END__

$str=$ARGV[0];
if ($str eq reverse($str)) {
    print " $str is a Palindrome\n";
}
else {
    print "$str is NOT a palnidrome\n";
}


__END__

$string="Orange is cheaper than mango but Mango is tastier than Orange";

$revwords=join(" ", reverse(split(" ",$string)));

print $revwords;

__END__

$revstr=reverse($string);
print "$revstr";

__END__

@fivers=unpack("A5" x(length($string)/5),"$string");

print "@fivers";


__END__
($firstfive,$secondfive,$thirdfive)=unpack("A5 x3 A5 x3 A5 ", $string);

print "$firstfive\n $secondfive \n $thirdfive\n";



__END__
$dir=defined ($ARGV[0]) ?shift $ARGV[0] :"/tmp";

print "$dir";



__END__

$name="krishnakanth";

$name=$ARGV[0] || $name;

print " Hello $name ";



__END__

$var1="Orange";

$var2="Mango";

print "$var1 $var2 \n";

($var2,$var1)=($var1,$var2);
print "$var1 $var2 \n";

__END__

use Term::ANSIColor;
print color ('bold blue');
print " *******************************************\n";
print color('reset');
print color('Blue');
print " Hello Welcome \n";
print color('bold blue');
print "********************************************\n";
print color('reset');



__END__

$str="abcdefghijklmnopqrstuvwxyz";
substr($str,0,5)="";
print "$str\n";
$first=substr($tr,0,1);
$last=substr($str,-1);

print "$first $last";

__END__
while ($num<=20) {
    $substr=substr($str,0,$num);
    print "$substr\n";
    $num++;
}


__END__
$file=test;
open ("FILE","$file");
while ($line=<FILE>) {
    $substr=substr($line,5,10);
    print "$substr\n";
}

__END__

$string="\n";

$string1='The Mcdonald\'s';

$str2=q( The Mcdonald's);

$str3=<<"EOF";

How the mind works. who is behind the mind.
How he gathers the ideas
How he builds the ideas as problems and worries
EOF

print "$string";
print "\n";
print "$string1";
print "\n";
print "$str2";
print "\n";
print "$str3";
print "\n";



__END__

$val="The Mcdonald's";

print 'The Value is $val ';


__END__

$k=0;
while(1) {
    print "$k ";
    $k++;
}

__END__

$x=10;
while ($x<=20) {
    print "$x ";
    $x++;
}
print "\n";



__END__

while ($x=5) {
    print "$x";
}



__END__
@array=(10,20,30);
print "@array\n";
print @array;



__END__
%hash=( Apple =>10,
        Mango =>20,
        Orange =>10,
        Banana =>12
);
print(%hash);



__END__
@array=(10,20,30);
print (@array,"\n\n");


__END__

$hostname=`hostname`;
$whoami=`whoami`;
$date=`date +"%D"`;

print " Hello world ";
print " Hostname = $hostname \n";
print ("HOSTNAME : $hostname","\n","WHOAMI : $whoami","\n","DATE : $date ","\n");


__END__
use strict;
use warnings;
open (FILE,"test2") || die "Oops $!";

BEGIN {
    print " Script Begins Now ..... \n";
}
END{
    print "No Ypu cant kill me \n";
}


__END__
@array=localtime();
print "@array";
__END__
open(FILE,"test") ;
@array=<FILE>;
foreach $line (@array) {
    print "$line ";
}


__END__
while(<>) {
    print;
}

__END__
open(FILE,"test");
open(WFILE,">test1");
while(<FILE>) {
    print WFILE $_; 
}


__END__

my @words=qw(krishna Kanth Aruna Pranav Diya Diya Krishna Kanth);
$#words=-1;
print @words;
__END__
use List::MoreUtils qw(uniq);
use Data::Dumper qw(Dumper);
my @words=qw(krishna Kanth Aruna Pranav Diya Diya Krishna Kanth);
my @unique_words=uniq(@words);
print Dumper \@unique_words;


__END__
@array=("perl","php","perl","asp");
print uniq(@array);


__END__
for(split(" ","tsuJ rehtonA lreP rekcaH")){print reverse . " "}print "\b.\n";
__END__
print $0 . "\n";
print __FILE__ . "\n";
__END__
print $0 . "\n";
print __FILE__ . "\n";

do 'filetwo';
__END__
@array=(1..20);
print "@array\n";
splice(@array,5,5,101..105);
print "@array\n";

__END__
$string="abcdefgh";
$subs=


__END__
$name="krishnakanth";
$string=<<"EOF";
my name is $name
Velum Mayilum Thunai
Ohm Namachivaya
Namo Narayanaya 
EOF
print "$string";




__END__

print "\n";
print q( hello mc'dowel);

__END__
use Mail::Sendmail;
my @users=qw(krishnakanthrv@yahoo.com krishnakanthrv@gmail.com arunakrishnakanth@yahoo.com krishnakanth.ramasamy@valuelabs.com);
foreach my $user (@users) {
    %mail_mess = ( To => "$user", From =>"krishnakanthrv\@yahoo.com", 
                   Subject => " Test Mail, Pls Ignore" , Message => "Test Mail, Please ignore");
    sendmail(%mail_mess);
}
__END__
use strict;
use warnings;
use lib "/home/krishnakanth/Dropbox/Perl_Scripts/Perl_Modules";
use Hello; 
print Hello::greet();

__END__
use strict;
use warnings;
use Spreadsheet::ParseExcel;
my $file="test_excel.xls";
my $parser=Spreadsheet::ParseExcel->new();
my $workbook=$parser->parse($file);
for my $worksheet ( $workbook->worksheets()) {
    my($row_min,$row_max)=$worksheet->row_range();
    my($col_min,$col_max)=$worksheet->col_range();
    for my $row ($row_min..$row_max) {
        print "$row : ";
        for my $col ($col_min..$col_max) {
            my $cell=$worksheet->get_cell($row,$col);
            next unless $cell;
#            print "Row,Col = ($row,$col) \n";
            my $value=$cell->value();
            print "$value : ";
        }
        print "\n";
    }
}
    

__END__
use strict;
use warnings;
use Getopt::Long;
Getting_Options();
sub Getting_Options {
    my($action,$file,$delay);
    GetOptions(
        q(action|a=s)=>\$action,
        q(file|f=s) => \$file,
        q(delay|d=i)=> \$delay

    );
    
    print " The command to run \n";
    print " $0 --file $file --delay $delay --action $action\n";
}
__END__
use strict;
use warnings;
use Getopt::Std;
my %options;
getopts('hf:a:',\%options);
if ($options{h}) {
    printhelp();
}
sub printhelp {
    print ("\*" x100,"\n","This is a Test\n","\*" x 100,"\n");
}
if ($options{f}) {
    my $file=$options{f};
    print "$file\n";
}

__END__
use strict;
use warnings;
use Getopt::Std;
my %opts;
getopts('oef:',\%opts);
if (defined $opts{'o'}) {
    print "Search Odd Numbers\n";
}
elsif (defined $opts{'e'}) {
    print "Search Even Numbers\n";
}
else {
    print "Search alphabets\n";
}
my $file=$opts{f};
print "Filename=$file\n";



__END__
print "Enter word :";
chomp($word=<>);
$is_polindrome=($word eq reverse($word));
print "Yes ! " if ($is_polindrome);
__END__
$x=10,$y=20;
($x,$y)=($y,$x);
print "$x , $y";

__END__
open(FILE,"test");
while(<FILE>) {
    $fiver=unpack("x3 A5 A*",$_);
    print "$fiver\n";
}

__END__
$a="make a hat";
(substr($a,0,1),substr($a,-1))=(substr($a,-1),substr($a,0,1));
print "$a\n";

__END__
open(FILE, "test"); 
while ($line=<FILE>) {
   ( $val1, $val2,$val3) =unpack("A5 X3 A5 X3 A5",$line);
    print "$val1,$val2,$val3\n";
}

__END__
$string="krishnakanth";
substr($string,0,5)="";
print "$string";

__END__

$text=<<"EOF";
*******************************************
This is the Usage method of the script
$0 Val1 Val2
*******************************************
EOF
print "$text";

__END__
sub get_numbers {
    print "Enter numbers =";
    chomp( my @numbers=<>);
    return @numbers;
}
for $number (&get_numbers) {
    print "$number\n";
}
    

__END__
while ($x==5) {
    print "$x\n";
}
__END__
print "Hi " if 

__END__
open(FILE,"test") ;
$count=1;
while (<FILE>) {
    if ($_=~tr/abc//) {
        print "Line $count : $_ \n";
    }
    $count++;
}

__END__
@files=@ARGV;
foreach $file (@files) {
    open(FILE,"$file");
    @contents=<FILE>;
    print "@contents";
}

__END__
%marks=("Krishna" => 1145, "Arjuna" => 1199, "Pranav" => 1197 , "Diya" => 1198);
foreach $name (sort keys %marks) {
    print "$name = $marks{$name}\n";
}
print "Do you want to change any marks ?";
chomp(my $opt=<>);
if ($opt eq 'y') {
    print "Whose Mark you want to change:";
    chomp(my $change=<>);
    print " Mark Please : ";
    chomp(my $mark=<>);
    $marks{$change}=$mark;
}

foreach $name (sort keys %marks) {
    print "$name = $marks{$name}\n";
}

__END__
$string="Krishnakanth";
$length=length($string);
@letters=split(//,$string);
while ($length>=0) {
    chop($string);
    print "$string\n";
    $length--;
}
$count=0;
while ($count <@letters) {
$icount=0;
    while ($icount <=$count) {
        print "$letters[$icount]";
        $icount++;
    }
    print "\n";
    $count++;
}
__END__
#@array=qw(abc def ghi klm nop);
@array=qw( Tamil English Physics chemistry biology);
chop(@array);
#@array=(1,10,20,30,2,35,45,22);
@sorted=sort(@array);
print "@sorted";

__END__
$count=0;
while ($count<@array) {
    $num=int rand(@array);
    print "$array[$num] \n";
    $count++;
}
print "Length of array=".scalar(@array)."\n";
$val=$array[-1];
print "$val\n";

__END__
$length=@array;
print "Lenth = $length \n";
($scalar)=@array;
print "$scalar";

__END__
print "Enter Values : " ;
chomp (my @values=<>);
print "@values \n";

__END__
use strict;
use warnings;
print "Enter the word ";
chomp (my $word=<>);
my @letters=split(//,$word);
my @revletters=reverse(@letters);
my $revword=join("",@revletters);   
print "$revword";
__END__
@array=qw( Tamil English Physics chemistry biology);
@rev_array=@array[4,3,2,1,0];
print "@rev_array\n";
@array2=@array;
@array3=@array[1,3,4];
print "@array2 \n";
print "@array3 \n";

__END__
print " To print numbers from num1 to num2 \n";
print "Num1 = ";
chomp ($num1=<>);
print "Num2 =";
chomp ($num2=<>);
@array=($num1..$num2);
print "@array \n";
__END__
@array1=(1..10);
print "@array1 \n";

__END__
@array1=qw(Tamil English Maths science History);
@array2=("abc","def","ghi","jkl");
@array3=("Rajini","Kamal","Ajith","Vijay",@array1,@array2);
print " Array 1 ......\n";
print "@array1 \n";

print "\nArray 2 .....\n";
print "@array2 \n";

print "\nArray 3 .... \n";
print "@array3 \n";

__END__
$sal=100;
$bonus=2;
print "Enter Marks =";
chomp(my $marks=<>);
if ($marks==5) {
    $newsal=($sal*$bonus/100+$sal,$sal*1.2,$sal+20);
    print "$newsal";
}

__END__
print ("\*" x 100, "\n" , "\t\tThis is a Test script","\n","\*" x 100, "\n" );

__END__

my $string="krish";
print "$string "  x 10;
print "$email\n";

__END__
$x=0;
while (++$x <=5) {
    print "$x ";
}
$x=0;
print "\n";
while ($x++<=5) {
    print "$x ";
}

__END__
$x=0;
while ($x <=100) {
	$x=$x+3;
	print "$x ";
}

__END__
print "Enter Marks :";
@subjects=qw(Tamil English Maths Science History);
$total=0;
foreach $subject (@subjects) {
	print "$subject=";
	chomp($mark=<>);
	$marks{$subject}=$mark;
	print "\n";
}
foreach $mark ( values %marks) {
	$total=$total+$mark;
}
print "Total =$total\n";
foreach $mark (values %marks ) {
	if ($mark<50 || $total < 300) {
		print "Disqualified";
	}
	elsif ($mark <=60 && $mark >50 &&$total <400 && $total >300) { 
		print "Second class\n";
	}
	elsif ($mark >70 && $mark <=90 && $total >450) {
		print "First Class\n";
	}
	elsif ( $mark >90 && $total >490) {
		print "Distinction\n";
	}
	else {
		print "Conditions Not matching";
	}
}
