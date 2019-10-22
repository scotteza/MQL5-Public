//+------------------------------------------------------------------+
//|                                            InsideBarDetector.mqh |
//|                                    Copyright 2019, Scott Edwards |
//|                                       https://scottedwards.tech/ |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, Scott Edwards"
#property link      "https://scottedwards.tech/"
#property version   "1.00"

class InsideBarDetector
{
private:

public:
                  InsideBarDetector();
                  ~InsideBarDetector();
                  
                  bool IsInsideBar(MqlRates &previousBarRates, MqlRates &currentBarRates)
                  {
                     return false;
                  }
};
InsideBarDetector::InsideBarDetector()
{

}
InsideBarDetector::~InsideBarDetector()
{

}
