#!/bin/perl -w

use strict;
use feature 'say';

sub Search_Insert_Position{
	my ($target, @nums) = (shift, @_);
	my $c = 0;

	foreach (@nums){
		return $c if $target <= $_;
		$c++
	}
	return $c
}

say(Search_Insert_Position(5, (1,3,5,6))); # 2
say(Search_Insert_Position(2, (1,3,5,6))); # 1
say(Search_Insert_Position(7, (1,3,5,6))); # 4
