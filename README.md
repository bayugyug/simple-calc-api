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
		
		

### Prepare

```sh

	 #unzip the file simple-calc-api-master.zip
	 unzip simple-calc-api-master.zip && cd simple-calc-api-master/
	 
	 #or grab from the github
     git clone https://github.com/bayugyug/simple-calc-api.git && cd simple-calc-api/


```


### Mini-How-To on running from the command-line


    [x] The app can accept a few command-line-parameters
	
	[x] Options:
		
	[x] Run-as-Http-Server:
	
		--http      = will run the application on default port#3005

```sh

			perl -Ilibs dancr.pl --http
			 
```		


	[x] Run-as-Command-Line:
	
		--cmd       = command to execute (ADD,SUB,DIV,MUL,FACTORIAL)
		--num1      = the 1st number
		--num2      = the 2nd number
		
		
```sh

			perl -Ilibs dancr.pl --cmd=ADD  --num1=10  --num2=720
			perl -Ilibs dancr.pl --cmd=SUB  --num1=50  --num2=20
			perl -Ilibs dancr.pl --cmd=DIV  --num1=100 --num2=25
			perl -Ilibs dancr.pl --cmd=MUL  --num1=15  --num2=50
			perl -Ilibs dancr.pl --cmd=FACT --num1=10
			 
```	


	[x] Sanity check
	    
		perl -Ilibs t/01-mocktest.t
	


### List of End-Points-Url


```sh

		#add
		curl -X GET 'http://127.0.0.1:3005/v1/api/add/9/20'  
			
			{"code":200,"result":29,"message":"Success"}
			
		#subtract
		curl -X GET 'http://127.0.0.1:3005/v1/api/sub/19/4'
			
			{"code":200,"result":15,"message":"Success"}
			
		#divide
		curl -X GET 'http://127.0.0.1:3005/v1/api/div/15/3'
		
			{"message":"Success","result":5.0,"code":200}
		
		
		#multiply
		curl -X GET 'http://127.0.0.1:3005/v1/api/mul/5/82'
		
			{"message":"Success","code":200,"result":410}
			
		
		#multiply
		curl -X GET 'http://127.0.0.1:3005/v1/api/factorial/7'
		
			{"message":"Success","result":5040,"code":200}
						
```

	
### Notes



### Reference
	

### License

[MIT](https://bayugyug.mit-license.org/)

