import 'package:flutter/material.dart';
import 'package:la_vie_app_1/project_colors.dart';
import 'package:la_vie_app_1/main_splash_screen.dart' as splash_screen;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "La Vie",
      color: Colors.white,
      theme: ThemeData(
        primarySwatch: Palette.greenToDark,
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            side: MaterialStateProperty.all(
              const BorderSide(
                color: Color(0xFF1ABC00),
              ),
            ),
          ),
        ),
      ),
      home: const Scaffold(
        body: splash_screen.MainSplashScreen(),
      ),
    );
  }
}
