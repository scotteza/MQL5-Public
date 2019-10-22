//+------------------------------------------------------------------+
//|                                                Run All Tests.mq5 |
//|                                    Copyright 2019, Scott Edwards |
//|                                       https://scottedwards.tech/ |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, Scott Edwards"
#property link      "https://scottedwards.tech/"
#property version   "1.00"

#include <Testing\Inside Bar Detector Should.mqh>

void OnStart()
{
   bool allTestsPassed = true;
   
   allTestsPassed = RunAllInsideBarTests() && allTestsPassed;
   
   if(allTestsPassed == true)
   {
      Alert("Overall result: All tests passed.");
   }
   else
   {
      Alert("Overall result: One or more test(s) failed.");
   }
}
