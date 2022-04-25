use strict;      
use warnings;

my $dir = '/home/albin/Documents/PDF/*';

foreach my $file ( glob ( "$dir/*.PDF" ) ) {
	#print $file,"\n";
	system "pdftotext -layout $file $file.txt";
    
}

