
use strict;
use warnings;
use Test::More;

use FindBin;          
use lib "$FindBin::Bin/../libs";
use Calc;
 

my $calc = new Calc();

#add
my ($num1,$num2) = (10,20);
my ($code,$err,$res) = $calc->add( $num1 , $num2);
is ($code, 1, "calc add ok");

#sub
($num1,$num2) = (50,20);
($code,$err,$res) = $calc->subtract( $num1 , $num2);
is ($code, 1, "calc subtract ok");

#divide
($num1,$num2) = (180,20);
($code,$err,$res) = $calc->divide( $num1 , $num2);
is ($code, 1, "calc divide ok");
($code,$err,$res) = $calc->divide( $num1 , 0);
is ($code, 0, "calc divide ok invalid param");


#multiply
($num1,$num2) = (150,20);
($code,$err,$res) = $calc->multiply( $num1 , $num2);
is ($code, 1, "calc multiply ok");

#factorial
$num1 = 20;
($code,$err,$res) = $calc->factorial( $num1 );
is ($code, 1, "calc factorial ok");

#factorial
$num1 = 200;
($code,$err,$res) = $calc->factorial( $num1 );
is ($code, 0, "calc factorial ok invalid param");



#ok
done_testing(7);

#nice
1;

