## simple-calc-api

* [x] Sample perl rest-api that simulates simple (add/subtract/divide/multiply/factorial)


### Pre-Requisite
	
	- Please run this in your command line to ensure modules/packages are in-place.

		Can install via CPAN or CPANMINUS
		
		#cpanm
		cpanm Dancer2
		
		#CPAN shell
		perl -MCPAN -e shell
		install Dancer2
		
		
```sh


```

### Download

```sh

     git clone https://github.com/bayugyug/simple-calc-api.git && cd simple-calc-api


```



### List of End-Points-Url


```sh

		#User Create
		curl -v -X POST 'http://127.0.0.1:8989/v1/api/user'  -d '{
				  "user":"ben@jerry.com",
				  "pass":"8888"
				  }'

				  @output:
				  
				  {"Code":200,"Status":"Create successful","Otp":"06370","OtpExpiry":"2019-01-18 10:47:36"}
				  
				  
 	
				
				
```


### Mini-How-To on running from the command-line


    [x] The app can accept a few command-line-parameters
	
	[x] Options:
		
	[x] Run-as-Http-Server:
	
		--http      = will run the application on default port#3005

```sh

			perl -Ilib dancr.pl --http
			 
```		


	[x] Run-as-Command-Line:
	
		--cmd       = command to execute (ADD,SUB,DIV,MUL,FACTORIAL)
		--num1      = the 1st number
		--num2      = the 2nd number
		
		
```sh

			perl -Ilib dancr.pl --cmd=ADD  --num1=10  --num2=720
			perl -Ilib dancr.pl --cmd=SUB  --num1=50  --num2=20
			perl -Ilib dancr.pl --cmd=DIV  --num1=100 --num2=25
			perl -Ilib dancr.pl --cmd=MUL  --num1=15  --num2=50
			perl -Ilib dancr.pl --cmd=FACT --num1=10
			 
```	


	[x] Sanity check
	    
		perl -Ilib t/01-mocktest.t
	
	
### Notes



### Reference
	

### License

[MIT](https://bayugyug.mit-license.org/)

