import 'package:flutter/material.dart';
import 'package:la_vie_app_1/main_splash_screen.dart' as splash_screen;
import 'package:la_vie_app_1/home.dart' as home_page;
import 'package:la_vie_app_1/test.dart' as test;

void main() {
  runApp(const MyApp());
}

class Palette {
  static const MaterialColor greenToDark = MaterialColor(
    0xFF1ABC00, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    <int, Color>{
      50: Color(0xff17a900), //10%
      100: Color(0xff159600), //20%
      200: Color(0xff128400), //30%
      300: Color(0xff107100), //40%
      400: Color(0xff0d5e00), //50%
      500: Color(0xff0a4b00), //60%
      600: Color(0xff083800), //70%
      700: Color(0xff052600), //80%
      800: Color(0xff031300), //90%
      900: Color(0xff000000), //100%
    },
  );
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
        body: home_page.HomePage(),
        //splash_screen.MainSplashScreen(),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
        ),
      ),
    );
  }
}
