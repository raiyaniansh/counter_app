import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier
{
  int i = 0;

  void incremet()
  {
    i++;
    notifyListeners();
  }
  void decremet()
  {
    i--;
    notifyListeners();
  }
  void x2()
  {
    i=i*2;
    notifyListeners();
  }
  void x3()
  {
    i=i*3;
    notifyListeners();
  }
  void clear()
  {
    i=0;
    notifyListeners();
  }
}