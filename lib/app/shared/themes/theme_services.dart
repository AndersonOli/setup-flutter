import 'package:flutter/material.dart';
import 'standard.dart';
import 'dark.dart';

enum ThemeType { Light, Dark }

class ThemeServices with ChangeNotifier {
  ThemeData currentTheme = standard;
  ThemeType _themeType = ThemeType.Dark;

  toggleTheme() {
    if (_themeType == ThemeType.Dark) {
      currentTheme = standard;
      _themeType = ThemeType.Light;
      return notifyListeners();
    }

    if (_themeType == ThemeType.Light) {
      currentTheme = darkTheme;
      _themeType = ThemeType.Dark;
      return notifyListeners();
    }
  }
}
