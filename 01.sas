*SAS sample program;

options nocenter nonumber;

data veg;
	infile "C:\Users\KEVIN\Downloads\_CSU East Bay\SAS\SAS Dataset\veggies.txt";
	input Name $ Code $ Days Number Price;
	CostPerSeed = Price / Number;
run;

title "List of Raw Data";
proc print data=veg;
run;

title "Frequency Distribution of Vegetable Names";
proc freq data=veg;
run;

title "Average Cost of Seeds";
proc means data=veg;
	var Price Days;
run;


*Alternative to the above;
data veg;
infile "C:\Users\KEVIN\Downloads\_CSU East Bay\SAS\SAS Dataset\veggies.txt";
input

Name $ Code $ Days Number
Price; CostPerSeed = Price / Number;
run;
