package Calc;

use strict;
use warnings;

use vars qw($VERSION @ISA @EXPORT @EXPORT_OK);


$|=1;

#--- version
$VERSION				= '1.00';


#constructor
sub new {
	
	my $class = shift;
	
	#get the params here if have
	my $self = bless {
	  num1 => shift,
	  num2 => shift,
	}, $class;
	
	return $self;
}

#add 
sub add() {
	my ($self,$num1, $num2) =  @_;
	$self->{num1} = $num1 if(defined $num1);
	$self->{num2} = $num2 if(defined $num2);
	
	#give the results
	return (1,'',$self->{num1}+$self->{num2});
}

#subtract 
sub subtract(){
	my ($self,$num1, $num2) =  @_;
	
	$self->{num1} = $num1 if(defined $num1);
	$self->{num2} = $num2 if(defined $num2);
	
	#give the results
	return (1,'',$self->{num1}-$self->{num2});
}

#multiply 
sub multiply(){
	my ($self,$num1, $num2) =  @_;
	
	$self->{num1} = $num1 if(defined $num1);
	$self->{num2} = $num2 if(defined $num2);
	
	#give the results
	return (1,'',$self->{num1}*$self->{num2});
}


#divide 
sub divide(){
	my ($self,$num1, $num2) =  @_;
	
	$self->{num1} = $num1 if(defined $num1);
	$self->{num2} = $num2 if(defined $num2);
	
	#dont allow zero ;-)
	return ( 0 , "Zero not allowed for divisor" , 0 ) if($self->{num2} == 0);
	
	#give the results
	return (1,'',$self->{num1}/$self->{num2});
}


#factorial  n!
sub factorial(){
	my ($self,$num1) =  @_;
	 
	#only 1 param is reqd
	$self->{num1} = $num1 if(defined $num1);
	
	my $result = 1;
		
	#dont allow negative ;-)
	return ( 0 , "Negative number not allowed" , 0 ) if($self->{num1} < 0) ;
	
	#cap it to 170? too much 
	return ( 0 , "Over the Max allowed: 170!" , 0 ) if($self->{num1} > 170) ;
	
	#good
	if ($self->{num1} > 1){
		for(my $i=1; $i <= $self->{num1}; $i++){
			$result *= $i ;
		}
	}
 
	#give back ($code, $errmsg , $result)
	return ( 1, '' , $result );
}


#DESTROY internal pkg destructor
sub DESTROY(){
	my $self	= shift;
}
 
#always-nice2-have
1;
