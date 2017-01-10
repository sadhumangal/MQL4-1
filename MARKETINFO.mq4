//+------------------------------------------------------------------+
//|                                                   MARKETINFO.mq4 |
//|      Copyright 2017, Marco vd Heijden, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+

double MarketInfo() 

Usage: MarketInfo(symbolname,ID)

Examples: double ask = MarketInfo(Symbol(),MODE_ASK);
          double bid = MarketInfo(Symbol(),MODE_BID);
          double spread = MarketInfo(Symbol(),13); 
          
ID,Value,Description
	
1, MODE_LOW          // Low day price

2, MODE_HIGH         // High day price

5, MODE_TIME         // The last incoming tick time (last known server time) 

9, MODE_BID          // Last incoming bid price. For the current symbol, it is stored in the predefined variable Bid
	
10,MODE_ASK          // Last incoming ask price. For the current symbol, it is stored in the predefined variable Ask

11,MODE_POINT        // Point size in the quote currency. For the current symbol, it is stored in the predefined variable Point

12,MODE_DIGITS       // Count of digits after decimal point in the symbol prices. For the current symbol, it is stored in the predefined variable Digits

13,MODE_SPREAD       // Spread value in points

14,MODE_STOPLEVEL    // Stop level in points
                     // A zero value of MODE_STOPLEVEL means either absence of any restrictions on the minimal distance for Stop Loss/Take Profit or,
                     // the fact that a trade server utilizes some external mechanisms for dynamic level control, which cannot be translated in the client terminal. 
                     // In the second case, GetLastError() can return error 130, because MODE_STOPLEVEL is actually "floating" here.

15,MODE_LOTSIZE      // Lot size in the base currency

16,MODE_TICKVALUE    // Tick value in the deposit currency

17,MODE_TICKSIZE     // Tick size in points

18,MODE_SWAPLONG     // Swap of the buy order

19,MODE_SWAPSHORT    // Swap of the sell order

20,MODE_STARTING     // Market starting date (usually used for futures)

21,MODE_EXPIRATION   // Market expiration date (usually used for futures)

22,MODE_TRADEALLOWED // Trade is allowed for the symbol

23,MODE_MINLOT       // Minimum permitted amount of a lot

24,MODE_LOTSTEP      // Step for changing lots

25,MODE_MAXLOT       // Maximum permitted amount of a lot

26,MODE_SWAPTYPE       // Swap calculation method. 
                       // 0 - in points; 
                       // 1 - in the symbol base currency; 
                       // 2 - by interest; 
                       // 3 - in the margin currency

27,MODE_PROFITCALCMODE // Profit calculation mode. 
                       // 0 - Forex; 
                       // 1 - CFD; 
                       // 2 - Futures

28,MODE_MARGINCALCMODE // Margin calculation mode. 
                       // 0 - Forex; 
                       // 1 - CFD; 
                       // 2 - Futures; 
                       // 3 - CFD for indices

29,MODE_MARGININIT        // Initial margin requirements for 1 lot

30,MODE_MARGINMAINTENANCE // Margin to maintain open orders calculated for 1 lot

31,MODE_MARGINHEDGED      // Hedged margin calculated for 1 lot
	
32,MODE_MARGINREQUIRED    // Free margin required to open 1 lot for buying

33,MODE_FREEZELEVEL       // Order freeze level in points. If the execution price lies within the range defined by the freeze level, 
                          // the order cannot be modified, cancelled or closed

34,MODE_CLOSEBY_ALLOWED	  // Allowed using OrderCloseBy() to close opposite orders on a specified symbol

//--- 2017
