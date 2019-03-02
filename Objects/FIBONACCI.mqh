//+------------------------------------------------------------------+ 
//| Create Fibonacci Retracement by the given coordinates            | 
//+------------------------------------------------------------------+ 
bool FiboLevelsCreate(const long            chart_ID=0,        // chart's ID 
                      const string          name="FiboLevels", // object name 
                      const int             sub_window=0,      // subwindow index  
                      datetime              time1=0,           // first point time 
                      double                price1=0,          // first point price 
                      datetime              time2=0,           // second point time 
                      double                price2=0,          // second point price 
                      const color           clr=clrRed,        // object color 
                      const ENUM_LINE_STYLE style=STYLE_SOLID, // object line style 
                      const int             width=1,           // object line width 
                      const bool            back=false,        // in the background 
                      const bool            selection=true,    // highlight to move 
                      const bool            ray_right=false,   // object's continuation to the right 
                      const bool            hidden=true,       // hidden in the object list 
                      const long            z_order=0)         // priority for mouse click 
  { 
//--- set anchor points' coordinates if they are not set 
   ChangeFiboLevelsEmptyPoints(time1,price1,time2,price2); 
//--- reset the error value 
   ResetLastError(); 
//--- Create Fibonacci Retracement by the given coordinates 
   if(!ObjectCreate(chart_ID,name,OBJ_FIBO,sub_window,time1,price1,time2,price2)) 
     { 
      Print(__FUNCTION__, 
            ": failed to create \"Fibonacci Retracement\"! Error code = ",GetLastError()); 
      return(false); 
     } 
//--- set color 
   ObjectSetInteger(chart_ID,name,OBJPROP_COLOR,clr); 
//--- set line style 
   ObjectSetInteger(chart_ID,name,OBJPROP_STYLE,style); 
//--- set line width 
   ObjectSetInteger(chart_ID,name,OBJPROP_WIDTH,width); 
//--- display in the foreground (false) or background (true) 
   ObjectSetInteger(chart_ID,name,OBJPROP_BACK,back); 
//--- enable (true) or disable (false) the mode of highlighting the channel for moving 
//--- when creating a graphical object using ObjectCreate function, the object cannot be 
//--- highlighted and moved by default. Inside this method, selection parameter 
//--- is true by default making it possible to highlight and move the object 
   ObjectSetInteger(chart_ID,name,OBJPROP_SELECTABLE,selection); 
   ObjectSetInteger(chart_ID,name,OBJPROP_SELECTED,selection); 
//--- enable (true) or disable (false) the mode of continuation of the object's display to the right 
   ObjectSetInteger(chart_ID,name,OBJPROP_RAY_RIGHT,ray_right); 
//--- hide (true) or display (false) graphical object name in the object list 
   ObjectSetInteger(chart_ID,name,OBJPROP_HIDDEN,hidden); 
//--- set the priority for receiving the event of a mouse click in the chart 
   ObjectSetInteger(chart_ID,name,OBJPROP_ZORDER,z_order); 
//--- successful execution 
   return(true); 
  } 
//+------------------------------------------------------------------+ 
//| Set number of levels and their parameters                        | 
//+------------------------------------------------------------------+ 
bool FiboLevelsSet(int             levels,            // number of level lines 
                   double          &values[],         // values of level lines 
                   color           &colors[],         // color of level lines 
                   ENUM_LINE_STYLE &styles[],         // style of level lines 
                   int             &widths[],         // width of level lines 
                   const long      chart_ID=0,        // chart's ID 
                   const string    name="FiboLevels") // object name 
  { 
//--- check array sizes 
   if(levels!=ArraySize(colors) || levels!=ArraySize(styles) || 
      levels!=ArraySize(widths) || levels!=ArraySize(widths)) 
     { 
      Print(__FUNCTION__,": array length does not correspond to the number of levels, error!"); 
      return(false); 
     } 
//--- set the number of levels 
   ObjectSetInteger(chart_ID,name,OBJPROP_LEVELS,levels); 
//--- set the properties of levels in the loop 
   for(int i=0;i<levels;i++) 
     { 
      //--- level value 
      ObjectSetDouble(chart_ID,name,OBJPROP_LEVELVALUE,i,values[i]); 
      //--- level color 
      ObjectSetInteger(chart_ID,name,OBJPROP_LEVELCOLOR,i,colors[i]); 
      //--- level style 
      ObjectSetInteger(chart_ID,name,OBJPROP_LEVELSTYLE,i,styles[i]); 
      //--- level width 
      ObjectSetInteger(chart_ID,name,OBJPROP_LEVELWIDTH,i,widths[i]); 
      //--- level description 
      ObjectSetString(chart_ID,name,OBJPROP_LEVELTEXT,i,DoubleToString(100*values[i],1)); 
     } 
//--- successful execution 
   return(true); 
  } 
//+------------------------------------------------------------------+ 
//| Move Fibonacci Retracement anchor point                          | 
//+------------------------------------------------------------------+ 
bool FiboLevelsPointChange(const long   chart_ID=0,        // chart's ID 
                           const string name="FiboLevels", // object name 
                           const int    point_index=0,     // anchor point index 
                           datetime     time=0,            // anchor point time coordinate 
                           double       price=0)           // anchor point price coordinate 
  { 
//--- if point position is not set, move it to the current bar having Bid price 
   if(!time) 
      time=TimeCurrent(); 
   if(!price) 
      price=SymbolInfoDouble(Symbol(),SYMBOL_BID); 
//--- reset the error value 
   ResetLastError(); 
//--- move the anchor point 
   if(!ObjectMove(chart_ID,name,point_index,time,price)) 
     { 
      Print(__FUNCTION__, 
            ": failed to move the anchor point! Error code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  } 
//+------------------------------------------------------------------+ 
//| Delete Fibonacci Retracement                                     | 
//+------------------------------------------------------------------+ 
bool FiboLevelsDelete(const long   chart_ID=0,        // chart's ID 
                      const string name="FiboLevels") // object name 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- delete the object 
   if(!ObjectDelete(chart_ID,name)) 
     { 
      Print(__FUNCTION__, 
            ": failed to delete \"Fibonacci Retracement\"! Error code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  } 
//+------------------------------------------------------------------+ 
//| Check the values of Fibonacci Retracement anchor points and set  | 
//| default values for empty ones                                    | 
//+------------------------------------------------------------------+ 
void ChangeFiboLevelsEmptyPoints(datetime &time1,double &price1, 
                                 datetime &time2,double &price2) 
  { 
//--- if the second point's time is not set, it will be on the current bar 
   if(!time2) 
      time2=TimeCurrent(); 
//--- if the second point's price is not set, it will have Bid value 
   if(!price2) 
      price2=SymbolInfoDouble(Symbol(),SYMBOL_BID); 
//--- if the first point's time is not set, it is located 9 bars left from the second one 
   if(!time1) 
     { 
      //--- array for receiving the open time of the last 10 bars 
      datetime temp[10]; 
      CopyTime(Symbol(),Period(),time2,10,temp); 
      //--- set the first point 9 bars left from the second one 
      time1=temp[0]; 
     } 
//--- if the first point's price is not set, move it 200 points below the second one 
   if(!price1) 
      price1=price2-200*SymbolInfoDouble(Symbol(),SYMBOL_POINT); 
  } 
//+------------------------------------------------------------------+ 
