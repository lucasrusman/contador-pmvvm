import 'package:flutter/material.dart';
import 'package:pmvvm/pmvvm.dart';

class MyViewModel extends ViewModel {
  int counter = 0;
  @override
  void init() {
    var height = MediaQuery.of(context).size.height;
  }

  void increase() {
    counter++;
    notifyListeners();
  }
}
