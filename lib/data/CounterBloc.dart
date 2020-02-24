import 'package:flutter/material.dart';

class CounterBloc with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  set count(int value) {
    _count = value;
    notifyListeners();
  }

  void increment() {
    _count++;
    notifyListeners();
  }
}
