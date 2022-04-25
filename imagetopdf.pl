#!/usr/bin/perl

use PDF::API2;
use strict;
use warnings;

my $pdf = PDF::API2->new;

foreach my $file ( glob "*.jpeg" ) {
    	my $image = $pdf->image_jpeg($file);
    	my $page = $pdf->page();
    	$page->mediabox(0,0,$image->width, $image->height);
    	$page->trimbox(0,0,$image->width, $image->height);
    	my $gfx = $page->gfx;
    	$gfx->image($image, 0, 0);
}

$pdf->saveas("Image1.pdf");
 
