#!/usr/bin/perl

use PDF::API2;
use strict;
use warnings;

my $pdf = PDF::API2->new;

if(-e "1.jpeg" && "2.jpeg" && "3.jpeg") {
	my $page = $pdf->page();
    	$page->mediabox("A4");
    	my $gfx = $page->gfx;
	my $image = $pdf->image_jpeg("1.jpeg");
    	$gfx->image($image, 150, 600);
	my $image2 = $pdf->image_jpeg("2.jpeg");
    	$gfx->image($image2, 135, 330);
	my $image3 = $pdf->image_jpeg("3.jpeg");
    	$gfx->image($image3, 150, 75);
	$pdf->saveas("MergeImage.pdf");
}
else {
	print "File not Found";
}

 
