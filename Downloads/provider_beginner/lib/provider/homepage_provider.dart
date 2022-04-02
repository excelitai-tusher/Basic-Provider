import 'package:flutter/cupertino.dart';

class HomePageProvider extends ChangeNotifier{
 bool? isEligible;
 String? eligibilityMessage = "";

 void check(int age){
  if(age >= 18){
   isEligible = true;
   eligibilityMessage = "You are eligible";
   notifyListeners();
  }
  else{
   isEligible = false;
   eligibilityMessage = "You are not eligible";
   notifyListeners();
  }
 }
}