//lib/my_app.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_app/utils/theme_provider.dart';
import 'pages/home_page.dart';
import './utils/constants.dart';
import './styles/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: appTitle,
      theme: themeProvider.lightTheme,
      darkTheme: themeProvider.darkTheme,
      themeMode: themeProvider.themeMode,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
