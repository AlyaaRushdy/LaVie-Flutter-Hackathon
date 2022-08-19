import 'package:flutter/material.dart';
import 'package:la_vie_app_1/main_splash_screen.dart' as splash_screen;

void main() {
  runApp(const splash_screen.MainSplashScreen());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          /* bottomNavigationBar: NavigationBar(
          backgroundColor: Colors.blue,
        ), */
          ),
    );
  }
}
