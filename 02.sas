*SAS sample program;

data demographic;
infile "C:\Users\KEVIN\Downloads\_CSU East Bay\SAS\SAS Dataset\mydata.txt";
input Gender $ Age Height Weight;
run;

title "Gender Frequencies";
proc freq data=demographic;
tables Gender;
run;

title "Summary Statistics";
proc means data=demographic;
var Age Height Weight;
run;
