//+------------------------------------------------------------------+
//|                                                        CHART.mqh |
//|      Copyright 2016, Marco vd Heijden, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2016, Marco vd Heijden, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"

//+------------------------------------------------------------------+ 
//| Checks if an object is a chart. If it is a graphic object,       | 
//| the result is true. If it is a real chart, the result variable   | 
//| has the value of false.                                          | 
//+------------------------------------------------------------------+ 
bool ChartIsObject(bool &result,const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long value; 
//--- reset the error value 
   ResetLastError(); 
//--- get the chart property 
   if(!ChartGetInteger(chart_ID,CHART_IS_OBJECT,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      //--- return false 
      return(false); 
     } 
//--- store the value of the chart property in memory 
   result=value; 
//--- successful execution 
   return(true); 
  }
//+----------------------------------------------------------------------+ 
//| Sends command to the terminal to display the chart above all others  | 
//+----------------------------------------------------------------------+ 
bool ChartBringToTop(const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- show the chart on top of all others 
   if(!ChartSetInteger(chart_ID,CHART_BRING_TO_TOP,0,true)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+--------------------------------------------------------------------------+ 
//| Checks if scrolling of chart using left mouse button is enabled          | 
//+--------------------------------------------------------------------------+ 
bool ChartMouseScrollGet(bool &result,const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long value; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_MOUSE_SCROLL,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- store the value of the chart property in memory 
   result=value; 
//--- successful execution 
   return(true); 
  } 
//+--------------------------------------------------------------------+ 
//| Enables/disables scrolling of chart using left mouse button        | 
//+--------------------------------------------------------------------+ 
bool ChartMouseScrollSet(const bool value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetInteger(chart_ID,CHART_MOUSE_SCROLL,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Checks if messages concerning move events and mouse clicks       | 
//| are sent to all MQL5 applications on the chart                   | 
//+------------------------------------------------------------------+ 
bool ChartEventMouseMoveGet(bool &result,const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long value; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_EVENT_MOUSE_MOVE,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- store the value of the chart property in memory 
   result=value; 
//--- successful execution 
   return(true); 
  } 
//+------------------------------------------------------------------------------+ 
//| Enables/disables the mode of sending messages concerning move events and     | 
//| mouse clicks to MQL5 applications on the chart                               | 
//+------------------------------------------------------------------------------+ 
bool ChartEventMouseMoveSet(const bool value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetInteger(chart_ID,CHART_EVENT_MOUSE_MOVE,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+---------------------------------------------------------------------+ 
//| Checks if messages concerning the event of a graphic                | 
//| object creation are sent to all MQL5 applications on the chart      | 
//+---------------------------------------------------------------------+ 
bool ChartEventObjectCreateGet(bool &result,const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long value; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_EVENT_OBJECT_CREATE,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- store the value of the chart property in memory 
   result=value; 
//--- successful execution 
   return(true); 
  } 
//+--------------------------------------------------------------------------+ 
//| Enables/disables the mode of sending messages concerning the event of a  | 
//| graphic object creation to all mql5 applications on the chart            | 
//+--------------------------------------------------------------------------+ 
bool ChartEventObjectCreateSet(const bool value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetInteger(chart_ID,CHART_EVENT_OBJECT_CREATE,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+---------------------------------------------------------------------+ 
//| Checks if messages concerning the event of a graphic object         | 
//| deletion are sent to all mql5 applications on the chart             | 
//+---------------------------------------------------------------------+ 
bool ChartEventObjectDeleteGet(bool &result,const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long value; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_EVENT_OBJECT_DELETE,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- store the value of the chart property in memory 
   result=value; 
//--- successful execution 
   return(true); 
  } 
//+--------------------------------------------------------------------------+ 
//| Enables/disables the mode of sending messages concerning the event of a  | 
//| graphic object deletion to all mql5 applications on the chart            | 
//+--------------------------------------------------------------------------+ 
bool ChartEventObjectDeleteSet(const bool value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetInteger(chart_ID,CHART_EVENT_OBJECT_DELETE,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Gets chart display type (candlesticks, bars or line)             | 
//+------------------------------------------------------------------+ 
ENUM_CHART_MODE ChartModeGet(const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long result=WRONG_VALUE; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_MODE,0,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return((ENUM_CHART_MODE)result); 
  } 
//+------------------------------------------------------------------+ 
//| Sets chart display type (candlesticks, bars or line)             | 
//+------------------------------------------------------------------+ 
bool ChartModeSet(const long value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetInteger(chart_ID,CHART_MODE,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Checks if a price chart is displayed in the foreground           | 
//+------------------------------------------------------------------+ 
bool ChartForegroundGet(bool &result,const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long value; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_FOREGROUND,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- store the value of the chart property in memory 
   result=value; 
//--- successful execution 
   return(true); 
  } 
//+------------------------------------------------------------------+ 
//| Enables/disables displaying of a price chart on the foreground   | 
//+------------------------------------------------------------------+ 
bool ChartForegroundSet(const bool value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetInteger(chart_ID,CHART_FOREGROUND,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+-------------------------------------------------------------------+ 
//| Checks if shifting a price chart from the right border is enabled | 
//+-------------------------------------------------------------------+ 
bool ChartShiftGet(bool &result,const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long value; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_SHIFT,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- store the value of the chart property in memory 
   result=value; 
//--- successful execution 
   return(true); 
  } 
//+---------------------------------------------------------------------------------+ 
//| Enables/disables displaying of a price chart with a shift from the right border | 
//+---------------------------------------------------------------------------------+ 
bool ChartShiftSet(const bool value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetInteger(chart_ID,CHART_SHIFT,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Checks if automatic scrolling of a chart to the right            | 
//| on new ticks arrival is enabled                                  | 
//+------------------------------------------------------------------+ 
bool ChartAutoscrollGet(bool &result,const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long value; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_AUTOSCROLL,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- store the value of the chart property in memory 
   result=value; 
//--- successful execution 
   return(true); 
  } 
//+------------------------------------------------------------------+ 
//| Enables/disables automatic scrolling of a chart to the right     | 
//| on new ticks arrival                                             | 
//+------------------------------------------------------------------+ 
bool ChartAutoscrollSet(const bool value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetInteger(chart_ID,CHART_AUTOSCROLL,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Gets chart scale (from 0 to 5)                                   | 
//+------------------------------------------------------------------+ 
int ChartScaleGet(const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long result=-1; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_SCALE,0,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return((int)result); 
  } 
//+------------------------------------------------------------------+ 
//| Sets chart scale (from 0 to 5)                                   | 
//+------------------------------------------------------------------+ 
bool ChartScaleSet(const long value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetInteger(chart_ID,CHART_SCALE,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Checks if the fixed scale mode is enabled                        | 
//+------------------------------------------------------------------+ 
bool ChartScaleFixGet(bool &result,const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long value; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_SCALEFIX,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- store the value of the chart property in memory 
   result=value; 
//--- successful execution 
   return(true); 
  } 
//+------------------------------------------------------------------+ 
//| Enables/disables the fixed scale mode                            | 
//+------------------------------------------------------------------+ 
bool ChartScaleFixSet(const bool value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetInteger(chart_ID,CHART_SCALEFIX,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Checks if the "1:1" scale is enabled                             | 
//+------------------------------------------------------------------+ 
bool ChartScaleFix11Get(bool &result,const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long value; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_SCALEFIX_11,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- store the value of the chart property in memory 
   result=value; 
//--- successful execution 
   return(true); 
  } 
//+------------------------------------------------------------------+ 
//| Enables/disables the "1:1" scale mode                            | 
//+------------------------------------------------------------------+ 
bool ChartScaleFix11Set(const bool value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetInteger(chart_ID,CHART_SCALEFIX_11,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Checks if the "points per bar" chart scaling mode is enabled     | 
//+------------------------------------------------------------------+ 
bool ChartScalePerBarGet(bool &result,const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long value; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_SCALE_PT_PER_BAR,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- store the value of the chart property in memory 
   result=value; 
//--- successful execution 
   return(true); 
  } 
//+------------------------------------------------------------------+ 
//| Enables/disables the "points per bar" chart scaling mode         | 
//+------------------------------------------------------------------+ 
bool ChartScalePerBarSet(const bool value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetInteger(chart_ID,CHART_SCALE_PT_PER_BAR,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+----------------------------------------------------------------------------------+ 
//| Checks if displaying of OHLC values in the upper left corner of chart is enabled | 
//+----------------------------------------------------------------------------------+ 
bool ChartShowOHLCGet(bool &result,const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long value; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_SHOW_OHLC,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- store the value of the chart property in memory 
   result=value; 
//--- successful execution 
   return(true); 
  } 
//+------------------------------------------------------------------------------+ 
//| Enables/disables displaying of OHLC values in the upper left corner of chart | 
//+------------------------------------------------------------------------------+ 
bool ChartShowOHLCSet(const bool value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetInteger(chart_ID,CHART_SHOW_OHLC,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Checks if displaying of Bid line on chart is enabled             | 
//+------------------------------------------------------------------+ 
bool ChartShowBidLineGet(bool &result,const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long value; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_SHOW_BID_LINE,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- store the value of the chart property in memory 
   result=value; 
//--- successful execution 
   return(true); 
  } 
//+------------------------------------------------------------------+ 
//| Enables/disables displaying of Bid line on chart                 | 
//+------------------------------------------------------------------+ 
bool ChartShowBidLineSet(const bool value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetInteger(chart_ID,CHART_SHOW_BID_LINE,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Checks if displaying of Ask line on chart is enabled             | 
//+------------------------------------------------------------------+ 
bool ChartShowAskLineGet(bool &result,const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long value; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_SHOW_ASK_LINE,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- store the value of the chart property in memory 
   result=value; 
//--- successful execution 
   return(true); 
  } 
//+------------------------------------------------------------------+ 
//| Enables/disables displaying of Ask line on chart                 | 
//+------------------------------------------------------------------+ 
bool ChartShowAskLineSet(const bool value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetInteger(chart_ID,CHART_SHOW_ASK_LINE,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+-----------------------------------------------------------------------------+ 
//| Checks if displaying of line for the last performed deal's price is enabled | 
//+-----------------------------------------------------------------------------+ 
bool ChartShowLastLineGet(bool &result,const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long value; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_SHOW_LAST_LINE,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- store the value of the chart property in memory 
   result=value; 
//--- successful execution 
   return(true); 
  } 
//+-------------------------------------------------------------------------+ 
//| Enables/disables displaying of line for the last performed deal's price | 
//+-------------------------------------------------------------------------+ 
bool ChartShowLastLineSet(const bool value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetInteger(chart_ID,CHART_SHOW_LAST_LINE,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+---------------------------------------------------------------------------------+ 
//| Checks if displaying of vertical separators between adjacent periods is enabled | 
//+---------------------------------------------------------------------------------+ 
bool ChartShowPeriodSeparatorGet(bool &result,const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long value; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_SHOW_PERIOD_SEP,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- store the value of the chart property in memory 
   result=value; 
//--- successful execution 
   return(true); 
  } 
//+-----------------------------------------------------------------------------+ 
//| Enables/disables displaying of vertical separators between adjacent periods | 
//+-----------------------------------------------------------------------------+ 
bool ChartShowPeriodSepapatorSet(const bool value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetInteger(chart_ID,CHART_SHOW_PERIOD_SEP,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Checks if the chart grid is displayed                            | 
//+------------------------------------------------------------------+ 
bool ChartShowGridGet(bool &result,const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long value; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_SHOW_GRID,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- store the value of the chart property in memory 
   result=value; 
//--- successful execution 
   return(true); 
  } 
//+------------------------------------------------------------------+ 
//| Enables/disables displaying of grid on chart                     | 
//+------------------------------------------------------------------+ 
bool ChartShowGridSet(const bool value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set the property value 
   if(!ChartSetInteger(chart_ID,CHART_SHOW_GRID,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Checks if volumes are displayed on a chart                       | 
//| The flag indicates the volumes showing mode                      | 
//+------------------------------------------------------------------+ 
ENUM_CHART_VOLUME_MODE ChartShowVolumesGet(const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long result=WRONG_VALUE; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_SHOW_VOLUMES,0,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return((ENUM_CHART_VOLUME_MODE)result); 
  } 
//+------------------------------------------------------------------+ 
//| Sets mode of displaying volumes on chart                         | 
//+------------------------------------------------------------------+ 
bool ChartShowVolumesSet(const long value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetInteger(chart_ID,CHART_SHOW_VOLUMES,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+-------------------------------------------------------------------+ 
//| Checks if pop-up descriptions of graphical objects are displayed  | 
//| when hovering mouse over them                                     | 
//+-------------------------------------------------------------------+ 
bool ChartShowObjectDescriptionGet(bool &result,const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long value; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_SHOW_OBJECT_DESCR,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- store the value of the chart property in memory 
   result=value; 
//--- successful execution 
   return(true); 
  } 
//+-------------------------------------------------------------------------+ 
//| Enables/disables displaying of pop-up descriptions of graphical objects | 
//| when hovering mouse over them                                           | 
//+-------------------------------------------------------------------------+ 
bool ChartShowObjectDescriptionSet(const bool value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetInteger(chart_ID,CHART_SHOW_OBJECT_DESCR,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+----------------------------------------------------------------------+ 
//| Gets the number of bars that are displayed (visible) in chart window | 
//+----------------------------------------------------------------------+ 
int ChartVisibleBars(const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long result=-1; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_VISIBLE_BARS,0,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return((int)result); 
  }
//+-----------------------------------------------------------------------+ 
//| Gets the total number of chart windows including indicator subwindows | 
//+-----------------------------------------------------------------------+ 
int ChartWindowsTotal(const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long result=-1; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_WINDOWS_TOTAL,0,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return((int)result); 
  }
//+------------------------------------------------------------------+ 
//| Checks if the current chart window or subwindow is visible       | 
//+------------------------------------------------------------------+ 
bool ChartWindowsIsVisible(bool &result,const long chart_ID=0,const int sub_window=0) 
  { 
//--- prepare the variable to get the property value 
   long value; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_WINDOW_IS_VISIBLE,sub_window,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- store the value of the chart property in memory 
   result=value; 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Gets the chart handle                                            | 
//+------------------------------------------------------------------+ 
int ChartWindowsHandle(const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long result=-1; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_WINDOW_HANDLE,0,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return((int)result); 
  }
//+------------------------------------------------------------------+ 
//| Gets the distance in pixels between the upper border of          | 
//| subwindow and the upper border of chart's main window            | 
//+------------------------------------------------------------------+ 
int ChartWindowsYDistance(const long chart_ID=0,const int sub_window=0) 
  { 
//--- prepare the variable to get the property value 
   long result=-1; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_WINDOW_YDISTANCE,sub_window,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return((int)result); 
  }
//+------------------------------------------------------------------------------+ 
//| Gets the index of the first visible bar on chart.                            | 
//| Indexing is performed like in timeseries: latest bars have smallest indices. | 
//+------------------------------------------------------------------------------+ 
int ChartFirstVisibleBar(const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long result=-1; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_FIRST_VISIBLE_BAR,0,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return((int)result); 
  }
//+------------------------------------------------------------------+ 
//| Gets the width of chart (in bars)                                | 
//+------------------------------------------------------------------+ 
int ChartWidthInBars(const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long result=-1; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_WIDTH_IN_BARS,0,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return((int)result); 
  }
//+------------------------------------------------------------------+ 
//| Gets the width of chart (in pixels)                              | 
//+------------------------------------------------------------------+ 
int ChartWidthInPixels(const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long result=-1; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_WIDTH_IN_PIXELS,0,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return((int)result); 
  }
//+------------------------------------------------------------------+ 
//| Gets the height of chart (in pixels)                             | 
//+------------------------------------------------------------------+ 
int ChartHeightInPixelsGet(const long chart_ID=0,const int sub_window=0) 
  { 
//--- prepare the variable to get the property value 
   long result=-1; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_HEIGHT_IN_PIXELS,sub_window,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return((int)result); 
  } 
//+------------------------------------------------------------------+ 
//| Sets the height of chart (in pixels)                             | 
//+------------------------------------------------------------------+ 
bool ChartHeightInPixelsSet(const int value,const long chart_ID=0,const int sub_window=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetInteger(chart_ID,CHART_HEIGHT_IN_PIXELS,sub_window,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Gets the background color of chart                               | 
//+------------------------------------------------------------------+ 
color ChartBackColorGet(const long chart_ID=0) 
  { 
//--- prepare the variable to receive the color 
   long result=clrNONE; 
//--- reset the error value 
   ResetLastError(); 
//--- receive chart background color 
   if(!ChartGetInteger(chart_ID,CHART_COLOR_BACKGROUND,0,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return((color)result); 
  } 
//+------------------------------------------------------------------+ 
//| Sets the background color of chart                               | 
//+------------------------------------------------------------------+ 
bool ChartBackColorSet(const color clr,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set the chart background color 
   if(!ChartSetInteger(chart_ID,CHART_COLOR_BACKGROUND,clr)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Gets the color of axes, scale and OHLC line                      | 
//+------------------------------------------------------------------+ 
color ChartForeColorGet(const long chart_ID=0) 
  { 
//--- prepare the variable to receive the color 
   long result=clrNONE; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the color of axes, scale and OHLC line 
   if(!ChartGetInteger(chart_ID,CHART_COLOR_FOREGROUND,0,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return((color)result); 
  } 
//+------------------------------------------------------------------+ 
//| Sets the color of axes, scale and OHLC line                      | 
//+------------------------------------------------------------------+ 
bool ChartForeColorSet(const color clr,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set the color of axes, scale and OHLC line 
   if(!ChartSetInteger(chart_ID,CHART_COLOR_FOREGROUND,clr)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Gets the color of chart grid                                     | 
//+------------------------------------------------------------------+ 
color ChartGridColorGet(const long chart_ID=0) 
  { 
//--- prepare the variable to receive the color 
   long result=clrNONE; 
//--- reset the error value 
   ResetLastError(); 
//--- receive chart grid color 
   if(!ChartGetInteger(chart_ID,CHART_COLOR_GRID,0,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return((color)result); 
  } 
//+------------------------------------------------------------------+ 
//| Sets the color of chart grid                                     | 
//+------------------------------------------------------------------+ 
bool ChartGridColorSet(const color clr,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set chart grid color 
   if(!ChartSetInteger(chart_ID,CHART_COLOR_GRID,clr)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Gets the color of volumes and market entry levels                | 
//+------------------------------------------------------------------+ 
color ChartVolumeColorGet(const long chart_ID=0) 
  { 
//--- prepare the variable to receive the color 
   long result=clrNONE; 
//--- reset the error value 
   ResetLastError(); 
//--- receive color of volumes and market entry levels 
   if(!ChartGetInteger(chart_ID,CHART_COLOR_VOLUME,0,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return((color)result); 
  } 
//+------------------------------------------------------------------+ 
//| Sets the color of volumes and market entry levels                | 
//+------------------------------------------------------------------+ 
bool ChartVolumeColorSet(const color clr,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set color of volumes and market entry levels 
   if(!ChartSetInteger(chart_ID,CHART_COLOR_VOLUME,clr)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+-----------------------------------------------------------------------------+ 
//| Gets the color of up bar, shadow and border of a bullish candlestick's body | 
//+-----------------------------------------------------------------------------+ 
color ChartUpColorGet(const long chart_ID=0) 
  { 
//--- prepare the variable to receive the color 
   long result=clrNONE; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the color of up bar, its shadow and border of bullish candlestick's body 
   if(!ChartGetInteger(chart_ID,CHART_COLOR_CHART_UP,0,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return((color)result); 
  } 
//+------------------------------------------------------------------+ 
//| Sets the color of up bar, shadow and border of a bullish candlestick's body | 
//+------------------------------------------------------------------+ 
bool ChartUpColorSet(const color clr,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set the color of up bar, its shadow and border of body of a bullish candlestick 
   if(!ChartSetInteger(chart_ID,CHART_COLOR_CHART_UP,clr)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+-------------------------------------------------------------------------------+ 
//| Gets the color of down bar, shadow and border of a bearish candlestick's body | 
//+-------------------------------------------------------------------------------+ 
color ChartDownColorGet(const long chart_ID=0) 
  { 
//--- prepare the variable to receive the color 
   long result=clrNONE; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the color of down bar, its shadow and border of bearish candlestick's body 
   if(!ChartGetInteger(chart_ID,CHART_COLOR_CHART_DOWN,0,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return((color)result); 
  } 
//+-------------------------------------------------------------------------------+ 
//| Sets the color of down bar, shadow and border of a bearish candlestick's body | 
//+-------------------------------------------------------------------------------+ 
bool ChartDownColorSet(const color clr,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set the color of down bar, its shadow and border of bearish candlestick's body 
   if(!ChartSetInteger(chart_ID,CHART_COLOR_CHART_DOWN,clr)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Gets the color of chart line and Doji candlesticks               | 
//+------------------------------------------------------------------+ 
color ChartLineColorGet(const long chart_ID=0) 
  { 
//--- prepare the variable to receive the color 
   long result=clrNONE; 
//--- reset the error value 
   ResetLastError(); 
//--- receive color of the chart line and Doji candlesticks 
   if(!ChartGetInteger(chart_ID,CHART_COLOR_CHART_LINE,0,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return((color)result); 
  } 
//+------------------------------------------------------------------+ 
//| Sets the color of chart line and Doji candlesticks               | 
//+------------------------------------------------------------------+ 
bool ChartLineColorSet(const color clr,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set color of the chart line and Doji candlesticks 
   if(!ChartSetInteger(chart_ID,CHART_COLOR_CHART_LINE,clr)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Gets the color of bullish candlestick's body                     | 
//+------------------------------------------------------------------+ 
color ChartBullColorGet(const long chart_ID=0) 
  { 
//--- prepare the variable to receive the color 
   long result=clrNONE; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the color of bullish candlestick's body 
   if(!ChartGetInteger(chart_ID,CHART_COLOR_CANDLE_BULL,0,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return((color)result); 
  } 
//+------------------------------------------------------------------+ 
//| Sets the color of bullish candlestick's body                     | 
//+------------------------------------------------------------------+ 
bool ChartBullColorSet(const color clr,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set the color of bullish candlestick's body 
   if(!ChartSetInteger(chart_ID,CHART_COLOR_CANDLE_BULL,clr)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Gets the color of bearish candlestick's body                     | 
//+------------------------------------------------------------------+ 
color ChartBearColorGet(const long chart_ID=0) 
  { 
//--- prepare the variable to receive the color 
   long result=clrNONE; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the color of bearish candlestick's body 
   if(!ChartGetInteger(chart_ID,CHART_COLOR_CANDLE_BEAR,0,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return((color)result); 
  } 
//+------------------------------------------------------------------+ 
//| Sets the color of bearish candlestick's body                     | 
//+------------------------------------------------------------------+ 
bool ChartBearColorSet(const color clr,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set the color of bearish candlestick's body 
   if(!ChartSetInteger(chart_ID,CHART_COLOR_CANDLE_BEAR,clr)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Gets the color of Bid line                                       | 
//+------------------------------------------------------------------+ 
color ChartBidColorGet(const long chart_ID=0) 
  { 
//--- prepare the variable to receive the color 
   long result=clrNONE; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the color of Bid price line 
   if(!ChartGetInteger(chart_ID,CHART_COLOR_BID,0,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return((color)result); 
  } 
//+------------------------------------------------------------------+ 
//| Sets the color of Bid line                                       | 
//+------------------------------------------------------------------+ 
bool ChartBidColorSet(const color clr,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set the color of Bid price line 
   if(!ChartSetInteger(chart_ID,CHART_COLOR_BID,clr)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Gets the color of Ask line                                       | 
//+------------------------------------------------------------------+ 
color ChartAskColorGet(const long chart_ID=0) 
  { 
//--- prepare the variable to receive the color 
   long result=clrNONE; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the color of Ask price line 
   if(!ChartGetInteger(chart_ID,CHART_COLOR_ASK,0,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return((color)result); 
  } 
//+------------------------------------------------------------------+ 
//| Sets the color of Ask line                                       | 
//+------------------------------------------------------------------+ 
bool ChartAskColorSet(const color clr,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set the color of Ask price line 
   if(!ChartSetInteger(chart_ID,CHART_COLOR_ASK,clr)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Gets the color of the last performed deal's price line           | 
//+------------------------------------------------------------------+ 
color ChartLastColorGet(const long chart_ID=0) 
  { 
//--- prepare the variable to receive the color 
   long result=clrNONE; 
//--- reset the error value 
   ResetLastError(); 
//--- receive color of the last performed deal's price line (Last) 
   if(!ChartGetInteger(chart_ID,CHART_COLOR_LAST,0,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return((color)result); 
  } 
//+------------------------------------------------------------------+ 
//| Sets the color of the last performed deal's price line           | 
//+------------------------------------------------------------------+ 
bool ChartLastColorSet(const color clr,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set color of the last performed deal's price line (Last) 
   if(!ChartSetInteger(chart_ID,CHART_COLOR_LAST,clr)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Gets the color of Stop Loss and Take Profit levels               | 
//+------------------------------------------------------------------+ 
color ChartStopLevelColorGet(const long chart_ID=0) 
  { 
//--- prepare the variable to receive the color 
   long result=clrNONE; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the color of stop order levels (Stop Loss and Take Profit) 
   if(!ChartGetInteger(chart_ID,CHART_COLOR_STOP_LEVEL,0,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return((color)result); 
  } 
//+------------------------------------------------------------------+ 
//| Sets the color of Stop Loss and Take Profit levels               | 
//+------------------------------------------------------------------+ 
bool ChartStopLevelColorSet(const color clr,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set the color of stop order levels (Stop Loss and Take Profit) 
   if(!ChartSetInteger(chart_ID,CHART_COLOR_STOP_LEVEL,clr)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Checks if trading levels are displayed on chart                  | 
//+------------------------------------------------------------------+ 
bool ChartShowTradeLevelsGet(bool &result,const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long value; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_SHOW_TRADE_LEVELS,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- store the value of the chart property in memory 
   result=value; 
//--- successful execution 
   return(true); 
  } 
//+------------------------------------------------------------------+ 
//| Enables/disables displaying of trading levels                    | 
//+------------------------------------------------------------------+ 
bool ChartShowTradeLevelsSet(const bool value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetInteger(chart_ID,CHART_SHOW_TRADE_LEVELS,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+----------------------------------------------------------------------+ 
//| Checks if dragging of trading levels on chart using mouse is allowed | 
//+----------------------------------------------------------------------+ 
bool ChartDragTradeLevelsGet(bool &result,const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long value; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_DRAG_TRADE_LEVELS,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- store the value of the chart property in memory 
   result=value; 
//--- successful execution 
   return(true); 
  } 
//+------------------------------------------------------------------+ 
//| Enables/disables dragging of trading levels on chart using mouse | 
//+------------------------------------------------------------------+ 
bool ChartDragTradeLevelsSet(const bool value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetInteger(chart_ID,CHART_DRAG_TRADE_LEVELS,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Checks if the time scale is displayed on chart                   | 
//+------------------------------------------------------------------+ 
bool ChartShowDateScaleGet(bool &result,const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long value; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_SHOW_DATE_SCALE,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- store the value of the chart property in memory 
   result=value; 
//--- successful execution 
   return(true); 
  } 
//+------------------------------------------------------------------+ 
//| Enables/disables displaying of the time scale on chart           | 
//+------------------------------------------------------------------+ 
bool ChartShowDateScaleSet(const bool value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetInteger(chart_ID,CHART_SHOW_DATE_SCALE,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Checks if the price scale is displayed on chart                  | 
//+------------------------------------------------------------------+ 
bool ChartShowPriceScaleGet(bool &result,const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long value; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_SHOW_PRICE_SCALE,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- store the value of the chart property in memory 
   result=value; 
//--- successful execution 
   return(true); 
  } 
//+------------------------------------------------------------------+ 
//| Enables/disables displaying of the price scale on chart          | 
//+------------------------------------------------------------------+ 
bool ChartShowPriceScaleSet(const bool value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetInteger(chart_ID,CHART_SHOW_PRICE_SCALE,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Checks if the "One click trading" panel is displayed on chart    | 
//+------------------------------------------------------------------+ 
bool ChartShowOneClickPanelGet(bool &result,const long chart_ID=0) 
  { 
//--- prepare the variable to get the property value 
   long value; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetInteger(chart_ID,CHART_SHOW_ONE_CLICK,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- store the value of the chart property in memory 
   result=value; 
//--- successful execution 
   return(true); 
  } 
//+------------------------------------------------------------------+ 
//| Enables/disables displaying of the "One click trading" panel     | 
//| on chart                                                         | 
//+------------------------------------------------------------------+ 
bool ChartShowOneClickPanelSet(const bool value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetInteger(chart_ID,CHART_SHOW_ONE_CLICK,0,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+-----------------------------------------------------------------+ 
//| Gets the size of shifting of the zero bar from the right border | 
//| of the chart in percentage values (from 10% up to 50%)          | 
//+-----------------------------------------------------------------+ 
double ChartShiftSizeGet(const long chart_ID=0) 
  { 
//--- prepare the variable to get the result 
   double result=EMPTY_VALUE; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetDouble(chart_ID,CHART_SHIFT_SIZE,0,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return(result); 
  } 
//+-----------------------------------------------------------------------------+ 
//| Gets the size of shifting of the zero bar from the right border             | 
//| of the chart in percentage values (from 10% up to 50%).                     | 
//| To enable the shift mode, CHART_SHIFT property value should be set to true. | 
//+-----------------------------------------------------------------------------+ 
bool ChartShiftSizeSet(const double value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetDouble(chart_ID,CHART_SHIFT_SIZE,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+----------------------------------------------------------------------------------------+ 
//| Gets the location of chart's fixed position from the left border (in percentage value) | 
//+----------------------------------------------------------------------------------------+ 
double ChartFixedPositionGet(const long chart_ID=0) 
  { 
//--- prepare the variable to get the result 
   double result=EMPTY_VALUE; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetDouble(chart_ID,CHART_FIXED_POSITION,0,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return(result); 
  } 
//+-----------------------------------------------------------------------------------------+ 
//| Gets the location of chart's fixed position from the left border (in percentage value). | 
//| To view the location of chart's fixed position, the value of CHART_AUTOSCROLL property  | 
//| should be set to false.                                                                 | 
//+-----------------------------------------------------------------------------------------+ 
bool ChartFixedPositionSet(const double value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetDouble(chart_ID,CHART_FIXED_POSITION,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Gets the value of chart's fixed maximum                          | 
//+------------------------------------------------------------------+ 
double ChartFixedMaxGet(const long chart_ID=0) 
  { 
//--- prepare the variable to get the result 
   double result=EMPTY_VALUE; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetDouble(chart_ID,CHART_FIXED_MAX,0,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return(result); 
  } 
//+------------------------------------------------------------------+ 
//| Sets the value of chart's fixed maximum.                         | 
//| To change the value of the property, CHART_SCALEFIX property     | 
//| value should be preliminarily set to true.                       | 
//+------------------------------------------------------------------+ 
bool ChartFixedMaxSet(const double value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetDouble(chart_ID,CHART_FIXED_MAX,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Gets the value of chart's fixed minimum                          | 
//+------------------------------------------------------------------+ 
double ChartFixedMinGet(const long chart_ID=0) 
  { 
//--- prepare the variable to get the result 
   double result=EMPTY_VALUE; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetDouble(chart_ID,CHART_FIXED_MIN,0,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return(result); 
  } 
//+------------------------------------------------------------------+ 
//| Sets the value of chart's fixed minimum.                         | 
//| To change the value of the property, CHART_SCALEFIX property     | 
//| value should be preliminarily set to true.                       | 
//+------------------------------------------------------------------+ 
bool ChartFixedMinSet(const double value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetDouble(chart_ID,CHART_FIXED_MIN,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+ 
//| Gets the value of chart scale in points per bar                  | 
//+------------------------------------------------------------------+ 
double ChartPointsPerBarGet(const long chart_ID=0) 
  { 
//--- prepare the variable to get the result 
   double result=EMPTY_VALUE; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetDouble(chart_ID,CHART_POINTS_PER_BAR,0,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return(result); 
  } 
//+----------------------------------------------------------------------+ 
//| Sets the value of chart scale in points per bar.                     | 
//| To view the result of this property's value change, the value of     | 
//| CHART_SCALE_PT_PER_BAR property should be preliminarily set to true. | 
//+----------------------------------------------------------------------+ 
bool ChartPointsPerBarSet(const double value,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetDouble(chart_ID,CHART_POINTS_PER_BAR,value)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+----------------------------------------------------------------------+ 
//| Gets the value of chart minimum in the main window or in a subwindow | 
//+----------------------------------------------------------------------+ 
double ChartPriceMin(const long chart_ID=0,const int sub_window=0) 
  { 
//--- prepare the variable to get the result 
   double result=EMPTY_VALUE; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetDouble(chart_ID,CHART_PRICE_MIN,sub_window,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return(result); 
  }
//+----------------------------------------------------------------------+ 
//| Gets the value of chart maximum in the main window or in a subwindow | 
//+----------------------------------------------------------------------+ 
double ChartPriceMax(const long chart_ID=0,const int sub_window=0) 
  { 
//--- prepare the variable to get the result 
   double result=EMPTY_VALUE; 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetDouble(chart_ID,CHART_PRICE_MAX,sub_window,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
     } 
//--- return the value of the chart property 
   return(result); 
  }
//+------------------------------------------------------------------+ 
//| Gets comment in the upper left corner of chart                   | 
//+------------------------------------------------------------------+ 
bool ChartCommentGet(string &result,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- receive the property value 
   if(!ChartGetString(chart_ID,CHART_COMMENT,result)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  } 
//+------------------------------------------------------------------+ 
//| Gets comment in the upper left corner of chart                   | 
//+------------------------------------------------------------------+ 
bool ChartCommentSet(const string str,const long chart_ID=0) 
  { 
//--- reset the error value 
   ResetLastError(); 
//--- set property value 
   if(!ChartSetString(chart_ID,CHART_COMMENT,str)) 
     { 
      //--- display the error message in Experts journal 
      Print(__FUNCTION__+", Error Code = ",GetLastError()); 
      return(false); 
     } 
//--- successful execution 
   return(true); 
  }
//+------------------------------------------------------------------+
