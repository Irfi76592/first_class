import 'package:first_class/screens/history.dart';
import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/home.dart';
import 'screens/setting.dart';
import 'screens/history.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/home": (context) => HomeScreen(),
        "/setting": (context) => SettingsScreen(),
        "/history": (context) => History(),
      },
      home: SplashScreen(),
    );
  }
}
