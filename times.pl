#!/usr/bin/perl

my $min = 0;
my $sec = 0;

while(<>) {
	if($_ =~ /^\\begin{frame}.*/) {
		if($_ =~ /DUR: ([0-9]+):([0-9]+)/) {
			$min += $1;
			$sec += $2;
		}
		else {
			die("Timeless frame!");
		}
	}
}

while($sec >= 60) {
	$sec -= 60;
	$min++;
}
printf "%02d:%02d", $min, $sec;
