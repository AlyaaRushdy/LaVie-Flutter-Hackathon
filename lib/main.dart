import 'package:flutter/material.dart';
import 'package:la_vie_app_1/main_splash_screen.dart' as splash_screen;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: splash_screen.MainSplashScreen(),
      ),
    );
  }
}
