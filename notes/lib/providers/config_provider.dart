import 'package:flutter/material.dart';

class ConfigProvider with ChangeNotifier {
  ThemeMode _modeTheme = ThemeMode.light;
  bool _switchMode = false;

  ThemeMode get modeTheme => _modeTheme;
  bool get switchMode => _switchMode;

  set setTheme(ThemeMode value) {
    _modeTheme = value;
    notifyListeners();
  }

  set setSwitch(bool value) {
    _switchMode = value;
    notifyListeners();
  }
}
