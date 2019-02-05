
//+------------------------------------------------------------------+
//|                                                       Period.mq4 |
//|      Copyright 2016, Marco vd Heijden, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2016, Marco vd Heijden, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"

datetime M1,M5,M15,M30,H1,H4,D1,W1,MN1;
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- load open times
   M1=iTime(Symbol(),PERIOD_M1,0);
   M5=iTime(Symbol(),PERIOD_M5,0);
   M15=iTime(Symbol(),PERIOD_M15,0);
   M30=iTime(Symbol(),PERIOD_M30,0);
   H1=iTime(Symbol(),PERIOD_H1,0);
   H4=iTime(Symbol(),PERIOD_H4,0);
   D1=iTime(Symbol(),PERIOD_D1,0);
   W1=iTime(Symbol(),PERIOD_W1,0);
   MN1=iTime(Symbol(),PERIOD_MN1,0);

//--- period detector
   switch(Period())
     {
      case PERIOD_M1:
         //Do Something...
         break;
      case PERIOD_M5:
         //Do Something...
         break;
      case PERIOD_M15:
         //Do Something...
         break;
      case PERIOD_M30:
         //Do Something...
         break;
      case PERIOD_H1:
         //Do Something...
         break;
      case PERIOD_H4:
         //Do Something...
         break;
      case PERIOD_D1:
         //Do Something...
         break;
      case PERIOD_W1:
         //Do Something...
         break;
      case PERIOD_MN1:
         //Do Something...
         break;
     }
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {

  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//--- check for new candles
   if(M1!=iTime(Symbol(),PERIOD_M1,0)) // new candle on M1
     {
      //Do Something...
      M1=iTime(Symbol(),PERIOD_M1,0);    // overwrite old with new value
     }
   if(M5!=iTime(Symbol(),PERIOD_M5,0)) // new candle on M5
     {
      //Do Something...
      M5=iTime(Symbol(),PERIOD_M5,0);    // overwrite old with new value
     }
   if(M15!=iTime(Symbol(),PERIOD_M15,0))// new candle on M15
     {
      //Do Something...
      M15=iTime(Symbol(),PERIOD_M15,0);  // overwrite old with new value
     }
   if(M30!=iTime(Symbol(),PERIOD_M30,0))// new candle on M30
     {
      //Do Something...
      M30=iTime(Symbol(),PERIOD_M30,0);  // overwrite old with new value
     }
   if(H1!=iTime(Symbol(),PERIOD_H1,0)) // new candle on H1
     {
      //Do Something...
      H1=iTime(Symbol(),PERIOD_H1,0);    // overwrite old with new value
     }
   if(H4!=iTime(Symbol(),PERIOD_H4,0)) // new candle on H4
     {
      //Do Something...
      H4=iTime(Symbol(),PERIOD_H4,0);    // overwrite old with new value
     }
   if(D1!=iTime(Symbol(),PERIOD_D1,0)) // new candle on D1
     {
      //Do Something...
      D1=iTime(Symbol(),PERIOD_D1,0);    // overwrite old with new value
     }
   if(W1!=iTime(Symbol(),PERIOD_W1,0)) // new candle on W1
     {
      //Do Something...
      W1=iTime(Symbol(),PERIOD_W1,0);    // overwrite old with new value
     }
   if(MN1!=iTime(Symbol(),PERIOD_MN1,0)) // new candle on MN1
     {
      //Do Something...
      MN1=iTime(Symbol(),PERIOD_MN1,0);    // overwrite old with new value
     }
  }
