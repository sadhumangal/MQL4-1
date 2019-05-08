//+------------------------------------------------------------------+ 
//| Create Andrews' Pitchfork by the given coordinates               | 
//+------------------------------------------------------------------+ 
bool PitchforkCreate(const long            chart_ID=0,        // chart's ID 
                     const string          name="Pitchfork",  // pitchfork name 
                     const int             sub_window=0,      // subwindow index  
                     datetime              time1=0,           // first point time 
                     double                price1=0,          // first point price 
                     datetime              time2=0,           // second point time 
                     double                price2=0,          // second point price 
                     datetime              time3=0,           // third point time 
                     double                price3=0,          // third point price 
                     const color           clr=clrRed,        // color of pitchfork lines 
                     const ENUM_LINE_STYLE style=STYLE_SOLID, // style of pitchfork lines 
                     const int             width=1,           // width of pitchfork lines 
                     const bool            back=false,        // in the background 
                     const bool            selection=true,    // highlight to move 
                     const bool            ray_right=false,   // pitchfork's continuation to the right 
                     const bool            hidden=true,       // hidden in the object list 
                     const long            z_order=0)         // priority for mouse click 
  { 
//--- set anchor points' coordinates if they are not set 
   ChangeChannelEmptyPoints(time1,price1,time2,price2,time3,price3); 
//--- reset the error value 
   ResetLastError(); 
//--- create Andrews' Pitchfork by the given coordinates 
   if(!ObjectCreate(chart_ID,name,OBJ_PITCHFORK,sub_window,time1,price1,time2,price2,time3,price3)) 
     { 
      Print(__FUNCTION__, 
            ": failed to create \"Andrews' Pitchfork\"! Error code = ",GetLastError()); 
      return(false); 
     } 
//--- set color 
   ObjectSetInteger(chart_ID,name,OBJPROP_COLOR,clr); 
//--- set the line style 
   ObjectSetInteger(chart_ID,name,OBJPROP_STYLE,style); 
//--- set width of the lines 
   ObjectSetInteger(chart_ID,name,OBJPROP_WIDTH,width); 
//--- display in the foreground (false) or background (true) 
   ObjectSetInteger(chart_ID,name,OBJPROP_BACK,back); 
//--- enable (true) or disable (false) the mode of highlighting the pitchfork for moving 
//--- when creating a graphical object using ObjectCreate function, the object cannot be 
//--- highlighted and moved by default. Inside this method, selection parameter 
//--- is true by default making it possible to highlight and move the object 
   ObjectSetInteger(chart_ID,name,OBJPROP_SELECTABLE,selection); 
   ObjectSetInteger(chart_ID,name,OBJPROP_SELECTED,selection); 
//--- enable (true) or disable (false) the mode of continuation of the pitchfork's display to the right 
   ObjectSetInteger(chart_ID,name,OBJPROP_RAY_RIGHT,ray_right); 
//--- hide (true) or display (false) graphical object name in the object list 
   ObjectSetInteger(chart_ID,name,OBJPROP_HIDDEN,hidden); 
//--- set the priority for receiving the event of a mouse click in the chart 
   ObjectSetInteger(chart_ID,name,OBJPROP_ZORDER,z_order); 
//--- successful execution 
   return(true); 
  } 
//+------------------------------------------------------------------+ 
//| Move Andrews' Pitchfork anchor point                             | 
//+------------------------------------------------------------------+ 
bool PitchforkPointChange(const long   chart_ID=0,       // chart's ID 
                          const string name="Pitchfork", // channel name 
                          const int    point_index=0,    // anchor point index 
                          datetime     time=0,           // anchor point time coordinate 
                          double       price=0)          // anchor point price coordinate 
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
//| Delete Andrews’ Pitchfork                                        | 
//+------------------------------------------------------------------+ 
bool PitchforkDelete(const long   chart_ID=0,       // chart's ID 
                     const string name="Pitchfork") // channel name 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- delete the channel 
   if(!ObjectDelete(chart_ID,name)) 
     { 
      Print(__FUNCTION__, 
            ": failed to delete \"Andrews' Pitchfork\"! Error code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  } 
//+----------------------------------------------------------------------+ 
//| Check the values of Andrews' Pitchfork anchor points and set default | 
//| values for empty ones                                                | 
//+----------------------------------------------------------------------+ 
void ChangeChannelEmptyPoints(datetime &time1,double &price1,datetime &time2, 
                              double &price2,datetime &time3,double &price3) 
  { 
//--- if the second (upper right) point's time is not set, it will be on the current bar 
   if(!time2) 
      time2=TimeCurrent(); 
//--- if the second point's price is not set, it will have Bid value 
   if(!price2) 
      price2=SymbolInfoDouble(Symbol(),SYMBOL_BID); 
//--- if the first (left) point's time is not set, it is located 9 bars left from the second one 
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
//--- if the third point's time is not set, it coincides with the second point's one 
   if(!time3) 
      time3=time2; 
//--- if the third point's price is not set, move it 200 points lower than the first one 
   if(!price3) 
      price3=price1-200*SymbolInfoDouble(Symbol(),SYMBOL_POINT); 
  } 
//+------------------------------------------------------------------+ 
