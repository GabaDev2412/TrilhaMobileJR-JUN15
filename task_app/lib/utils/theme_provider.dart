//lib/utils/theme_provider.dart
import 'package:flutter/material.dart';
import '../styles/theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  void setThemeMode(ThemeMode mode) {
    themeMode = mode;
    notifyListeners();
  }

  final TextTheme defaultTextTheme = const TextTheme(
    bodyLarge: TextStyle(color: Colors.black),
    bodyMedium: TextStyle(color: Colors.black54),
  );

  ThemeData get lightTheme => MaterialTheme(defaultTextTheme).light();
  ThemeData get darkTheme => MaterialTheme(defaultTextTheme).dark();

  ThemeData get currentTheme {
    switch (themeMode) {
      case ThemeMode.light:
        return lightTheme;
      case ThemeMode.dark:
        return darkTheme;
      case ThemeMode.system:
      default:
        return WidgetsBinding.instance.window.platformBrightness == Brightness.dark
            ? darkTheme
            : lightTheme;
    }
  }

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      return WidgetsBinding.instance.window.platformBrightness == Brightness.dark;
    }
    return themeMode == ThemeMode.dark;
  }
}
