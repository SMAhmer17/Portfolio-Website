import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  // ThemeMode _themeMode = ThemeMode.light;

  // ThemeMode get themeMode => _themeMode;

  ThemeMode themeMode = ThemeMode.light;

  bool get isLightMode => themeMode == ThemeMode.light;
  void toggleThemeMode({required bool isLightMode}) {
    themeMode = isLightMode ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }
}
