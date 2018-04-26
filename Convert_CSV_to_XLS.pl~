#!/usr/bin/perl
#convert any csv file into an xls file
#requires the name of your CSV file as an argument
#output file name and delimiter are optional
#output file name defaults to input file name with .xls appended to it
#delimiter defaults to ','
#
#script will convert ANY delimited file into an Excel spreadsheet file
#if your input CSV file contains more than 65k lines, it will split the input
#into another sheet in the workbook. This will occur every 64999 lines.
#this is a pretty dumb script. If you give it poorly formatted CSV data, you will
#get poorly formatted excel spreadsheets. This is a FEATURE! If one of the csv
#lines has an extra delimiter, the script wont care, it will just stick the data
#in the next cell.

use Spreadsheet::WriteExcel;

my $input_csv_file = $ARGV[0];
my $output_xls_file = $ARGV[1];
my $delim = $ARGV[2];

unless(-e $input_csv_file){ die "input file not found. filename: $input_csv_file\n";}
unless(defined $output_xls_file) { $output_xls_file = "$input_csv_file.xls";}
unless(!(-e $output_xls_file)){ die "I'm not going to overwrite your existing file: $output_xls_file. Rename it first.\n";}
unless(defined $delim){ $delim = ',';}

print "INPUT: $input_csv_file\n OUTPUT: $output_xls_file\nDELIM: $delim\n";

open(CSV,$input_csv_file) or die "failed to open $input_csv_file\n";

my $counter=0;
my $maxlines=64999;
#excel sucks, can't do files with more than 65k lines
#so I'm going to split the output files on that mark
#$batch_counter will be used if/when the number of rows exceed $maxlines
my $batch_counter=2;

my $workbook = Spreadsheet::WriteExcel->new($output_xls_file);
$worksheet = $workbook->add_worksheet('Sheet1');

foreach my $line (<CSV>)
{
        if($counter==$maxlines)
        {
                $counter=0;
                my $sheetname='Sheet'.$batch_counter;
                $worksheet = $workbook->add_worksheet($sheetname);
                $batch_counter++;
        }
        chomp $line;
        my @cells = split /$delim/,$line;
        my $cellcount=0;
        foreach my $cell (@cells)
        {
                $worksheet->write($counter,$cellcount,$cell);
                $cellcount++;
        }
        $counter++;
}

$workbook->close() or die "Error closing file: $!";
close CSV;

