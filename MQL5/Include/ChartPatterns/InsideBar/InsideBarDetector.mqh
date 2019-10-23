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
                  
                  bool IsInsideBar(double previousBarHigh, double previousBarLow, double currentBarHigh, double currentBarLow)
                  {
                     return previousBarLow < currentBarLow && previousBarHigh > currentBarHigh;
                  }
};
InsideBarDetector::InsideBarDetector()
{

}
InsideBarDetector::~InsideBarDetector()
{

}
