//lib/main.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './utils/task_provider.dart';
import './my_app.dart';
import './utils/theme_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => TaskProvider()),
      ChangeNotifierProvider(create: (_) => ThemeProvider()),
    ],
    child: MyApp(),
  ));
}
