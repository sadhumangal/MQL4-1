void Close_AllOrders()
  {
/*-----------------------------------------------------------------------------------------------*/
//Close Orders according to FIFO Rule
   for(i=0; i<OrdersTotal(); i++)
     {
      if(OrderSelect(i,SELECT_BY_POS,MODE_TRADES))
         if(OrderSymbol()==Symbol())
           {
            if(OrderType()==OP_BUY)
              {
               Close_Result=OrderClose(OrderTicket(),OrderLots(),Bid,0,clrNONE);
               if(Close_Result) i--;
              }
            if(OrderType()==OP_SELL)
              {
               Close_Result=OrderClose(OrderTicket(),OrderLots(),Ask,0,clrNONE);
               if(Close_Result) i--;
              }
            if(OrderType()==OP_SELLLIMIT ||
               OrderType()==OP_SELLSTOP ||
               OrderType()==OP_BUYLIMIT ||
               OrderType()==OP_BUYSTOP)
              {
               Close_Result=OrderDelete(OrderTicket(),clrNONE);
               if(Close_Result) i--;
              }
           }
     }
/*-----------------------------------------------------------------------------------------------*/
  }
