#!usr/bin/perl

use strict;
use warnings;

print("Enter the total money: ");
my $money=<STDIN>;
calculate_denom($money);

#calculating denominations
sub calculate_denom{
	my $total_money = shift;
	my @denom_array = (50,20,10,5,2,1);

	foreach my $val_denom (@denom_array){
		while ($total_money >= $val_denom){
			# coins to be given in change
			my $no_of_coins = int($total_money/$val_denom);
			print "$no_of_coins coins of denomination $val_denom\n";
			$total_money -= ($val_denom*$no_of_coins);
		};
	};
};
