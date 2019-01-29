#!/usr/bin/env perl
#



use FindBin;          
use lib "$FindBin::Bin/libs";
use Getopt::Long;
use Scalar::Util qw(looks_like_number);
use Dancer2;


use Calc;
use Router;
use CLI;

#dancer attrs/settings
set serializer      => 'JSON';
set content_type    => 'application/json';


#opts
my ($opt_cmd,$opt_num1, $opt_num2, $opt_http) = ('',0,0,0);
my $result = GetOptions (
	"cmd=s"   => \$opt_cmd,    # command
	"num1=s"  => \$opt_num1,   # number:1
	"num2=s"  => \$opt_num2,   # number:2
	"http"    => \$opt_http);  # http:flag

if(!$opt_http){
	#try here
	my $cli = new CLI($opt_cmd,$opt_num1,$opt_num2);
	my ($code,$err,$res) = $cli->process();
	my $reply = '';
	if($code != 1){
		$reply = to_json ({ code => 206, message => "Error: $err"}, {utf8 => 1, pretty => 1});
	} else {
		$reply = to_json ({ code => 200, message => "Success", result => "$res" }, {utf8 => 1, pretty => 1});
	}
	print $reply;
	exit 0;
}


#dance here ;-)
start;


1;

