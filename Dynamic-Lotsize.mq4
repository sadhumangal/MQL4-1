//--- example 1
//--- lot size calculation
  double lot=0.01;

        if(AccountEquity()<200){lot =0.12;}
   else if(AccountEquity()<300){lot =0.10;}
   else if(AccountEquity()<400){lot =0.09;}
   else if(AccountEquity()<500){lot =0.08;}
   else if(AccountEquity()<600){lot =0.07;}
   else if(AccountEquity()<700){lot =0.06;}
   else if(AccountEquity()<800){lot =0.05;}
   else if(AccountEquity()<900){lot =0.03;}
   else if(AccountEquity()<1000){lot=0.02;}
   else                          {lot=lot;}
//--- 

//--- example 2
double lots=AccountBalance()/10000;//100000 for 0.1 scalable depending on account balance 
//---

//--- example 3
//Gearbox//--- USE YOUR IMAGINATION !! DoN'T SET IT TOO WIDE !
double Lots;
Balance=AccountInfoDouble(ACCOUNT_BALANCE);

if(Balance>10000)
{Lots=10;Print(" Gear Two");}
if(Balance>100000)
{Lots=100;Print(" Gear Three");}
if(Balance>1000000)
{Lots=1000;Print(" Gear Four");}
if(Balance>10000000)
{Lots=10000;Print(" Gear Five");}

if(Balance<10000000)
{Lots=1000;Print(" Gear Four");}
if(Balance<1000000)
{Lots=100;Print(" Gear Three");}
if(Balance<100000)
{Lots=10;Print(" Gear Two");}
if(Balance<10000)
{Lots=1;Print(" Gear One");}
if(Balance>1000000000)
{Lots=0;}
