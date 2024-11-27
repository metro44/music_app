import 'package:flutter/material.dart';
import 'package:music_player_app/themes/dark_mode.dart';
import 'package:music_player_app/themes/light_mode.dart';

class ThemeProvider extends ChangeNotifier {
  // initially be on light mode
  ThemeData _themeData = lightmode;

  // get theme
  ThemeData get themeData => _themeData;

  // if dark mode
  bool get isDarkMode => _themeData == darkMode;

  // set theme
  set themeData(ThemeData themeData) {
    _themeData = themeData;

    // update UI
    notifyListeners();
  }

  // toggle theme
  void toggleTheme() {
    if (_themeData == lightmode) {
      themeData = darkMode;
    } else {
      themeData = lightmode;
    }
  }
}
