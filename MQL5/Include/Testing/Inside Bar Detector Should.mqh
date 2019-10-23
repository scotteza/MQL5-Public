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
   allTestsPassed = DetectANonInsideBar() && allTestsPassed;
   
   return allTestsPassed;
}

bool DetectAnInsideBar()
{
   double previousBarHigh = 1.18280000;
   double previousBarLow = 1.17307000;
   
   double currentBarHigh = 1.18243;
   double currentBarLow = 1.17449;
   
   InsideBarDetector insideBarDetector;
   
   bool isInsideBar = insideBarDetector.IsInsideBar(previousBarHigh, previousBarLow, currentBarHigh, currentBarLow);
   
   if(!isInsideBar)
   {
      Alert("Inside Bar detection failed.");
      return false;
   }
   
   return true;
}

bool DetectANonInsideBar()
{
   double previousBarHigh = 1.19222000;
   double previousBarLow = 1.18373000;
   
   double currentBarHigh = 1.19869000;
   double currentBarLow = 1.19007000;
   
   InsideBarDetector insideBarDetector;
   
   bool isInsideBar = insideBarDetector.IsInsideBar(previousBarHigh, previousBarLow, currentBarHigh, currentBarLow);
   
   if(isInsideBar)
   {
      Alert("Inside Bar detected where one does not exist.");
      return false;
   }
   
   return true;
}