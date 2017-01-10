//+------------------------------------------------------------------+
//|                                                CLOSE ALL NOW.mq4 |
//|      Copyright 2017, Marco vd Heijden, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2017, Marco vd Heijden, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict

bool closed_all=0;
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- create timer
   EventSetTimer(1);

//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//--- destroy timer
   EventKillTimer();

  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---

  }
//+------------------------------------------------------------------+
//| Timer function                                                   |
//+------------------------------------------------------------------+
void OnTimer()
  {
//--- close all NOW
   if(closed_all==0)
     {
      if(OrdersTotal()>0)
        {
         for(int order=0; order<=OrdersTotal()-1; order++)
           {
            bool selected=OrderSelect(order,SELECT_BY_POS);
              {
               if(selected==1)
                 {
                  bool close=OrderClose(OrderTicket(),OrderLots(),OrderClosePrice(),3,clrNONE);
                 }
              }
           }
        }
      if(OrdersTotal()==0)
        {
         closed_all=1;
        }
     }
  }
//+------------------------------------------------------------------+
