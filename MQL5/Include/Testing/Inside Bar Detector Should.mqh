//+------------------------------------------------------------------+
//|                                   Inside Bar Detector Should.mqh |
//|                                    Copyright 2019, Scott Edwards |
//|                                       https://scottedwards.tech/ |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, Scott Edwards"
#property link      "https://scottedwards.tech/"

#include <ChartPatterns\InsideBar\InsideBarDetector.mqh>

bool RunAllInsideBarTests()
{
   bool allTestsPassed = true;
   
   allTestsPassed = DetectAnInsideBar() && allTestsPassed;
   
   return allTestsPassed;
}

bool DetectAnInsideBar()
{
   MqlRates previousBarRates;
   previousBarRates.time = D'2017/08/21 00:00:00';
   previousBarRates.open = 1.17573000;
   previousBarRates.high = 1.18280000;
   previousBarRates.low = 1.17307000;
   previousBarRates.close = 1.18132000;
   previousBarRates.tick_volume = 93406;
   previousBarRates.spread = 5;
   previousBarRates.real_volume = 0;
   
   MqlRates currentBarRates;
   currentBarRates.time = D'2017/08/22 00:00:00';
   currentBarRates.open = 1.18135;
   currentBarRates.high = 1.18243;
   currentBarRates.low = 1.17449;
   currentBarRates.close = 1.17646;
   currentBarRates.tick_volume = 85776;
   currentBarRates.spread = 5;
   currentBarRates.real_volume = 0;
   
   InsideBarDetector insideBarDetector;
   
   bool isInsideBar = insideBarDetector.IsInsideBar(previousBarRates, currentBarRates);
   
   if(!isInsideBar)
   {
      Alert("Inside Bar detection failed.");
      return false;
   }
   
   return true;
}
