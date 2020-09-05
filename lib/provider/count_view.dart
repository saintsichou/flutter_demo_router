import 'package:flutter/material.dart';

class MyCount with ChangeNotifier {
  int _count = 88;
  int get counter => _count;
  set counter(int value) {
    _count = value;
    notifyListeners();
  }
}
