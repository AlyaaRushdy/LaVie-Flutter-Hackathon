import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:la_vie_app_1/log_in.dart';
import 'package:flutter_svg/flutter_svg.dart';
//import 'package:la_vie_app_1/home.dart';

class MainSplashScreen extends StatelessWidget {
  const MainSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: SvgPicture.asset(
          "images/Logo.svg",
          height: 68.0,
          width: 234.0,
        ),
        nextScreen: const LogIn(),
        splashTransition: SplashTransition.slideTransition,
        duration: 3000,
      ),
    );
  }
}
