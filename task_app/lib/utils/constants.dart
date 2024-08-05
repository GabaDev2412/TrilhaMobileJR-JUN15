//lib/utils/constants.dart
import 'package:flutter/material.dart';

const String apiUrl = "https://api.example.com";
const String appTitle = "Task List App";

TextTheme createTextTheme(BuildContext context) {
  TextTheme baseTextTheme = Theme.of(context).textTheme;

  // Ajuste a seguir com as fontes padrão ou fontes customizadas que você tenha
  TextTheme textTheme = baseTextTheme.copyWith(
    bodyLarge: baseTextTheme.bodyLarge?.copyWith(fontFamily: 'YourBodyFontFamily'),
    bodyMedium: baseTextTheme.bodyMedium?.copyWith(fontFamily: 'YourBodyFontFamily'),
    bodySmall: baseTextTheme.bodySmall?.copyWith(fontFamily: 'YourBodyFontFamily'),
    labelLarge: baseTextTheme.labelLarge?.copyWith(fontFamily: 'YourBodyFontFamily'),
    labelMedium: baseTextTheme.labelMedium?.copyWith(fontFamily: 'YourBodyFontFamily'),
    labelSmall: baseTextTheme.labelSmall?.copyWith(fontFamily: 'YourBodyFontFamily'),
  );
  return textTheme;
}
