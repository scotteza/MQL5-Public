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

   return true;
}
