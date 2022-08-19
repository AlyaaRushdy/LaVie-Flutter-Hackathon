import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Image.asset('images/regDecoration.png'),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset('images/Logo.png'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 12.0,
                ),
                //alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text("Sign In"),
                    Text("Log In"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
