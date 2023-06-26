import 'package:flutter/material.dart';

class Pertemuan13Provider extends ChangeNotifier {
  double _progressValue = 0.0;
  bool _sedangMemanggang = false;

  double get progressValue => _progressValue;
  bool get sedangMemanggang => _sedangMemanggang;

  void mulaiMemanggang(int duration) async {
    _sedangMemanggang = true;
    notifyListeners();

    for (int i = 0; i <= duration; i++) {
      _progressValue = i.toDouble() / duration.toDouble();
      notifyListeners();
      await Future.delayed(const Duration(seconds: 1));
    }

    _sedangMemanggang = false;
    _progressValue = 0.0;
    notifyListeners();
  }
}
