import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  String currentTheme = 'system';

  ThemeMode get themeMode {
    if (currentTheme == 'light') {
      return ThemeMode.light;
    } else if (currentTheme == 'dark') {
      return ThemeMode.dark;
    } else {
      return ThemeMode.system;
    }
  }

  changeTheme(String theme) async {
    currentTheme = theme;
    notifyListeners();
  }

  // initialize() async {
  //   final SharedPreferences _prefs = await SharedPreferences.getInstance();

  //   currentTheme = _prefs.getString('theme') ?? 'system';
  //   notifyListeners();
  // }
}