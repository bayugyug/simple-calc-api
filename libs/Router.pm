package Router;

use Scalar::Util qw(looks_like_number);
use Dancer2;

use strict;
use warnings;
use Calc;


#dancer attrs/settings
set 'logger'       => 'console';
set 'log'          => 'debug';
set 'show_errors'  => 1;
set 'startup_info' => 1;
set 'warnings'     => 1;
set 'serializer'   => 'JSON';
set 'port'         => 3005;


my $calc = new Calc();


#REST_API_ROUTES_HERE
get '/' => sub{
	return {code => 200, message => "Welcome Simple Calc Rest API via Dancer"};
};

#add
get '/v1/api/add/:num1/:num2' => sub{
	my $num1 = params->{num1};
	my $num2 = params->{num2};

	#sanity check params
	if ( !looks_like_number( $num1 ) || !looks_like_number( $num2) ){
		return {code => 206, message => "Error: Invalid parameters"};
	}
	my ($code,$err,$res) = $calc->add( $num1 , $num2);
	if($code != 1){
		return {code => 206, message => "Error: $err"};
	}
	return {code => 200, message => "Success", result => $res};
};

#subtract
get '/v1/api/sub/:num1/:num2' => sub{
	my $num1 = params->{num1};
	my $num2 = params->{num2};
	
	#sanity check params
	if ( !looks_like_number( $num1 ) || !looks_like_number( $num2) ){
		return {code => 206, message => "Error: Invalid parameters"};
	}
	my ($code,$err,$res) = $calc->subtract( $num1 , $num2);
	if($code != 1){
		return {code => 206, message => "Error: $err"};
	}
	return {code => 200, message => "Success", result => $res};
};

#divide
get '/v1/api/div/:num1/:num2' => sub{
	my $num1 = params->{num1};
	my $num2 = params->{num2};
	#sanity check params
	if ( !looks_like_number( $num1 ) || !looks_like_number( $num2) ){
		return {code => 206, message => "Error: Invalid parameters"};
	}
	my ($code,$err,$res) = $calc->divide( $num1 , $num2);
	if($code != 1){
		return {code => 206, message => "Error: $err"};
	}
	return {code => 200, message => "Success", result => $res};
};


#multiply
get '/v1/api/mul/:num1/:num2' => sub{
	my $num1 = params->{num1};
	my $num2 = params->{num2};
	#sanity check params
	if ( !looks_like_number( $num1 ) || !looks_like_number( $num2) ){
		return {code => 206, message => "Error: Invalid parameters"};
	}
	my ($code,$err,$res) = $calc->multiply( $num1 , $num2);
	if($code != 1){
		return {code => 206, message => "Error: $err"};
	}
	return {code => 200, message => "Success", result => $res};
};


#factorial
get '/v1/api/factorial/:num1' => sub{
	my $num1 = params->{num1};
	#sanity check params
	if ( !looks_like_number( $num1 ) ){
		return {code => 206, message => "Error: Invalid parameters"};
	}
	my ($code,$err,$res) = $calc->factorial( $num1);
	if($code != 1){
		return {code => 206, message => "Error: $err"};
	}
	return {code => 200, message => "Success", result => $res};
};

#always-nice2-have
1;
