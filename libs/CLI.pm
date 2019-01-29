package CLI;

use strict;
use warnings;
use Scalar::Util qw(looks_like_number);

use vars qw($VERSION @ISA @EXPORT @EXPORT_OK);


$|=1;

#--- version
$VERSION				= '1.00';

use Calc;

#constructor
sub new {
	
	my $class = shift;
	
	#get the params here if have
	#get the params here if have
	my $self = bless {
	  cmd  => shift,
	  num1 => shift,
	  num2 => shift,
	}, $class;
	
	return $self;
}

#process 
sub process() {
	my ($self,$cmd,$num1, $num2) =  @_;
	$self->{cmd}  = $cmd  if(defined $cmd);
	$self->{num1} = $num1 if(defined $num1);
	$self->{num2} = $num2 if(defined $num2);
	
	#not supported
	if ($self->{cmd} !~ /^(ADD|SUB|DIV|MUL|FACT|FACTORIAL)$/i) {
			return (0, "Allowed Commands (ADD|SUB|DIV|MUL|FACT)" , undef);
	#check params
	}elsif (( !looks_like_number( $self->{num1} ) || !looks_like_number( $self->{num2}) && $self->{cmd}  !~ /(FACT|FACTORIAL)/i) ){
			return (0, "Invalid parameters" , undef);
	}elsif (( !looks_like_number( $self->{num1} ) && $self->{cmd}  =~ /(FACT|FACTORIAL)/i) ){
			return (0, "Invalid parameters" , undef);
	}
	#try here
	my $calc = new Calc();
	if($self->{cmd} =~ /^(ADD)$/i){
			return $calc->add( $self->{num1},  $self->{num2});
	}elsif($self->{cmd} =~ /^(SUB)$/i){
			return $calc->subtract( $self->{num1}, $self->{num2});
	}elsif($self->{cmd} =~ /^(DIV)$/i){
			return $calc->divide( $self->{num1}, $self->{num2});
	}elsif($self->{cmd} =~ /^(MUL)$/i){
			return $calc->multiply( $self->{num1}, $self->{num2});
	}elsif($self->{cmd} =~ /^(FACTORIAL|FACT)$/i){
			return $calc->factorial( $self->{num1}, $self->{num2});
	}
}



#DESTROY internal pkg destructor
sub DESTROY(){
	my $self	= shift;
}
 
#always-nice2-have
1;
