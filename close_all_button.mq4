//example expert close, buy sell

#property strict
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
   ObjectCreate(0,"CloseButton",OBJ_BUTTON,0,0,0);
   ObjectSetInteger(0,"CloseButton",OBJPROP_XDISTANCE,25);
   ObjectSetInteger(0,"CloseButton",OBJPROP_YDISTANCE,25);
   ObjectSetInteger(0,"CloseButton",OBJPROP_XSIZE,100);
   ObjectSetInteger(0,"CloseButton",OBJPROP_YSIZE,50);

   ObjectSetString(0,"CloseButton",OBJPROP_TEXT,"CLOSE");

   ObjectSetInteger(0,"CloseButton",OBJPROP_COLOR,White);
   ObjectSetInteger(0,"CloseButton",OBJPROP_BGCOLOR,Red);
   ObjectSetInteger(0,"CloseButton",OBJPROP_BORDER_COLOR,Red);
   ObjectSetInteger(0,"CloseButton",OBJPROP_BORDER_TYPE,BORDER_FLAT);
   ObjectSetInteger(0,"CloseButton",OBJPROP_HIDDEN,true);
   ObjectSetInteger(0,"CloseButton",OBJPROP_STATE,false);
   ObjectSetInteger(0,"CloseButton",OBJPROP_FONTSIZE,10);

//---
/////////
   ObjectCreate(0,"CloseButton1",OBJ_BUTTON,0,0,0);
   ObjectSetInteger(0,"CloseButton1",OBJPROP_XDISTANCE,150);
   ObjectSetInteger(0,"CloseButton1",OBJPROP_YDISTANCE,25);
   ObjectSetInteger(0,"CloseButton1",OBJPROP_XSIZE,100);
   ObjectSetInteger(0,"CloseButton1",OBJPROP_YSIZE,50);

   ObjectSetString(0,"CloseButton1",OBJPROP_TEXT,"BUY");

   ObjectSetInteger(0,"CloseButton1",OBJPROP_COLOR,White);
   ObjectSetInteger(0,"CloseButton1",OBJPROP_BGCOLOR,Blue);
   ObjectSetInteger(0,"CloseButton1",OBJPROP_BORDER_COLOR,Blue);
   ObjectSetInteger(0,"CloseButton1",OBJPROP_BORDER_TYPE,BORDER_FLAT);
   ObjectSetInteger(0,"CloseButton1",OBJPROP_HIDDEN,true);
   ObjectSetInteger(0,"CloseButton1",OBJPROP_STATE,false);
   ObjectSetInteger(0,"CloseButton1",OBJPROP_FONTSIZE,10);
//
   ObjectCreate(0,"CloseButton2",OBJ_BUTTON,0,0,0);
   ObjectSetInteger(0,"CloseButton2",OBJPROP_XDISTANCE,275);
   ObjectSetInteger(0,"CloseButton2",OBJPROP_YDISTANCE,25);
   ObjectSetInteger(0,"CloseButton2",OBJPROP_XSIZE,100);
   ObjectSetInteger(0,"CloseButton2",OBJPROP_YSIZE,50);

   ObjectSetString(0,"CloseButton2",OBJPROP_TEXT,"SELL");

   ObjectSetInteger(0,"CloseButton2",OBJPROP_COLOR,White);
   ObjectSetInteger(0,"CloseButton2",OBJPROP_BGCOLOR,Blue);
   ObjectSetInteger(0,"CloseButton2",OBJPROP_BORDER_COLOR,Blue);
   ObjectSetInteger(0,"CloseButton2",OBJPROP_BORDER_TYPE,BORDER_FLAT);
   ObjectSetInteger(0,"CloseButton2",OBJPROP_HIDDEN,true);
   ObjectSetInteger(0,"CloseButton2",OBJPROP_STATE,false);
   ObjectSetInteger(0,"CloseButton2",OBJPROP_FONTSIZE,10);


   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---

  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---

  }
//+------------------------------------------------------------------+
//| ChartEvent function                                              |
//+------------------------------------------------------------------+
void OnChartEvent(const int id,
                  const long &lparam,
                  const double &dparam,
                  const string &sparam)
  {
//---
//OrderSend(Symbol(),OP_BUY,1,Ask,3,0,0,"ada",123,0,CLR_NONE);
if(sparam=="CloseButton1") // Close button has been pressed
     {
     OrderSend(Symbol(),OP_BUY,1,Ask,3,0,0,"BUY",123,0,CLR_NONE);
     
      ObjectSetInteger(0,"CloseButton1",OBJPROP_STATE,false);
     }
    if(sparam=="CloseButton2") // Close button has been pressed
     {
     OrderSend(Symbol(),OP_SELL,1,Bid,3,0,0,"SELL",123,0,CLR_NONE);
     
      ObjectSetInteger(0,"CloseButton2",OBJPROP_STATE,false);
     }



   if(sparam=="CloseButton") // Close button has been pressed
     {
      for(int i=OrdersTotal()-1; i>=0; i--)
        {
         OrderSelect(i,SELECT_BY_POS);
         if(OrderType()==OP_BUY || OrderType()==OP_SELL)
            OrderClose(OrderTicket(),OrderLots(),OrderClosePrice(),5);
         else
            OrderDelete(OrderTicket());
        }
      ObjectSetInteger(0,"CloseButton",OBJPROP_STATE,false);
     }
  }
//+------------------------------------------------------------------+
