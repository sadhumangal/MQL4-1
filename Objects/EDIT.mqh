// Functions:
//- EditCreate()
//- EditMove()
//- EditChangeSize()
//- EditTextChange()
//- EditTextGet()
//- EditDelete()

//+------------------------------------------------------------------+ 
//| Create Edit object                                               | 
//+------------------------------------------------------------------+ 
bool EditCreate(const long             chart_ID=0,               // chart's ID 
                const string           name="Edit",              // object name 
                const int              sub_window=0,             // subwindow index 
                const int              x=0,                      // X coordinate 
                const int              y=0,                      // Y coordinate 
                const int              width=50,                 // width 
                const int              height=18,                // height 
                const string           text="Text",              // text 
                const string           font="Arial",             // font 
                const int              font_size=10,             // font size 
                const ENUM_ALIGN_MODE  align=ALIGN_CENTER,       // alignment type 
                const bool             read_only=false,          // ability to edit 
                const ENUM_BASE_CORNER corner=CORNER_LEFT_UPPER, // chart corner for anchoring 
                const color            clr=clrBlack,             // text color 
                const color            back_clr=clrWhite,        // background color 
                const color            border_clr=clrNONE,       // border color 
                const bool             back=false,               // in the background 
                const bool             selection=false,          // highlight to move 
                const bool             hidden=true,              // hidden in the object list 
                const long             z_order=0)                // priority for mouse click 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- create edit field 
   if(!ObjectCreate(chart_ID,name,OBJ_EDIT,sub_window,0,0)) 
     { 
      Print(__FUNCTION__, 
            ": failed to create \"Edit\" object! Error code = ",GetLastError()); 
      return(false); 
     } 
//--- set object coordinates 
   ObjectSetInteger(chart_ID,name,OBJPROP_XDISTANCE,x); 
   ObjectSetInteger(chart_ID,name,OBJPROP_YDISTANCE,y); 
//--- set object size 
   ObjectSetInteger(chart_ID,name,OBJPROP_XSIZE,width); 
   ObjectSetInteger(chart_ID,name,OBJPROP_YSIZE,height); 
//--- set the text 
   ObjectSetString(chart_ID,name,OBJPROP_TEXT,text); 
//--- set text font 
   ObjectSetString(chart_ID,name,OBJPROP_FONT,font); 
//--- set font size 
   ObjectSetInteger(chart_ID,name,OBJPROP_FONTSIZE,font_size); 
//--- set the type of text alignment in the object 
   ObjectSetInteger(chart_ID,name,OBJPROP_ALIGN,align); 
//--- enable (true) or cancel (false) read-only mode 
   ObjectSetInteger(chart_ID,name,OBJPROP_READONLY,read_only); 
//--- set the chart's corner, relative to which object coordinates are defined 
   ObjectSetInteger(chart_ID,name,OBJPROP_CORNER,corner); 
//--- set text color 
   ObjectSetInteger(chart_ID,name,OBJPROP_COLOR,clr); 
//--- set background color 
   ObjectSetInteger(chart_ID,name,OBJPROP_BGCOLOR,back_clr); 
//--- set border color 
   ObjectSetInteger(chart_ID,name,OBJPROP_BORDER_COLOR,border_clr); 
//--- display in the foreground (false) or background (true) 
   ObjectSetInteger(chart_ID,name,OBJPROP_BACK,back); 
//--- enable (true) or disable (false) the mode of moving the label by mouse 
   ObjectSetInteger(chart_ID,name,OBJPROP_SELECTABLE,selection); 
   ObjectSetInteger(chart_ID,name,OBJPROP_SELECTED,selection); 
//--- hide (true) or display (false) graphical object name in the object list 
   ObjectSetInteger(chart_ID,name,OBJPROP_HIDDEN,hidden); 
//--- set the priority for receiving the event of a mouse click in the chart 
   ObjectSetInteger(chart_ID,name,OBJPROP_ZORDER,z_order); 
//--- successful execution 
   return(true); 
  } 
//+------------------------------------------------------------------+ 
//| Move Edit object                                                 | 
//+------------------------------------------------------------------+ 
bool EditMove(const long   chart_ID=0,  // chart's ID 
              const string name="Edit", // object name 
              const int    x=0,         // X coordinate 
              const int    y=0)         // Y coordinate 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- move the object 
   if(!ObjectSetInteger(chart_ID,name,OBJPROP_XDISTANCE,x)) 
     { 
      Print(__FUNCTION__, 
            ": failed to move X coordinate of the object! Error code = ",GetLastError()); 
      return(false); 
     } 
   if(!ObjectSetInteger(chart_ID,name,OBJPROP_YDISTANCE,y)) 
     { 
      Print(__FUNCTION__, 
            ": failed to move Y coordinate of the object! Error code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  } 
//+------------------------------------------------------------------+ 
//| Resize Edit object                                               | 
//+------------------------------------------------------------------+ 
bool EditChangeSize(const long   chart_ID=0,  // chart's ID 
                    const string name="Edit", // object name 
                    const int    width=0,     // width 
                    const int    height=0)    // height 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- change the object size 
   if(!ObjectSetInteger(chart_ID,name,OBJPROP_XSIZE,width)) 
     { 
      Print(__FUNCTION__, 
            ": failed to change the object width! Error code = ",GetLastError()); 
      return(false); 
     } 
   if(!ObjectSetInteger(chart_ID,name,OBJPROP_YSIZE,height)) 
     { 
      Print(__FUNCTION__, 
            ": failed to change the object height! Error code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  } 
//+------------------------------------------------------------------+ 
//| Change Edit object's text                                        | 
//+------------------------------------------------------------------+ 
bool EditTextChange(const long   chart_ID=0,  // chart's ID 
                    const string name="Edit", // object name 
                    const string text="Text") // text 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- change object text 
   if(!ObjectSetString(chart_ID,name,OBJPROP_TEXT,text)) 
     { 
      Print(__FUNCTION__, 
            ": failed to change the text! Error code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  } 
//+------------------------------------------------------------------+ 
//| Return Edit object text                                          | 
//+------------------------------------------------------------------+ 
bool EditTextGet(string      &text,        // text 
                 const long   chart_ID=0,  // chart's ID 
                 const string name="Edit") // object name 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- get object text 
   if(!ObjectGetString(chart_ID,name,OBJPROP_TEXT,0,text)) 
     { 
      Print(__FUNCTION__, 
            ": failed to get the text! Error code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  } 
//+------------------------------------------------------------------+ 
//| Delete Edit object                                               | 
//+------------------------------------------------------------------+ 
bool EditDelete(const long   chart_ID=0,  // chart's ID 
                const string name="Edit") // object name 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- delete the label 
   if(!ObjectDelete(chart_ID,name)) 
     { 
      Print(__FUNCTION__, 
            ": failed to delete \"Edit\" object! Error code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  } 
//+------------------------------------------------------------------+ 
