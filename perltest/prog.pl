#!/usr/bin/perl
use Fcntl;
use File::Copy;

#use strict;

#sysopen(FH,'bookstore.txt',O_RDWR,0755) or die "file cannot be opened";
#print FH "<html>\n<head>\n<title>U SUCK</title>\n</head>\n<marquee><body>\nHeres the text\n</body></marquee>\n</html>\n";
#close(FH);

@dessert=("1. Ice-Creams", "2. Gulabjamun", "3. Brownie", "4. Sundaes");
@Snacks=("1. Gujju Choice","2. Aloo Parantha","3. Bread-Jam-Butter", "4. Bhelpuri","5. Sevpuri");
%testarr=('name','sud','dob','10/15/1988','city','san jose','state','california');
$e = "Entree.txt";
print "Enter choice of food you want to eat?\n1.Entree\n2.Dessert\n3.Snacks\n4. Dont Want Anything.. FU\n5.using key value\n::";
$ch=<>;

if ($ch==1) {
	print "\nWhat would you like to have:\n";
	open(e);
	print<e>;
	print"\nEnter Your Choice: ";
	$ch2=<>;
	print "\nYou will be served Entree soon!!\n";
	}
elsif($ch==2){
	print "\nWhat would you like to have:\n";
	foreach $i(@dessert){
		print $i."\n";
	}
	print"\nEnter Your Choice: ";
	$ch2=<>;
	print "You will be served Dessert soon!!";
	}
elsif($ch==3){
	print "\nWhat would you like to have:\n";
	for($i=0;$i<@Snacks;$i++){
		print "@Snacks[$i]\n";
	}
	print"\nEnter Your Choice: ";
	$ch2=<>;
	print"\nEnter something to add on menu: ";
	$ch3=<>;
	$id=@Snacks+1;
	$txt="$id. ".$ch3;
	push(@Snacks,$txt);
	print"Items added";
	print"\nNew Menu:\n";
	print reverse @Snacks;
	print "\n";
print %testarr;
	print"\nEnter Your Choice: ";
	$ch2=<>;
	print "Thank you for your response. You will be served Snacks soon!!";
	}
elsif($ch=~ /exit/ || $ch=~ /bye/ ){
		print "thank u 4 using this !!"
	}
elsif($ch=='\w'){print"Alpha numerics";}
elsif($ch==5){
	print 'name: '.%testarr;
	
}

else{ print" Try again!!";}

