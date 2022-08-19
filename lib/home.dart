import 'package:flutter/material.dart';

// الصفحه اللي هيكون فيها النباتات ومانساش اني اغير اسم ال كلاس
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text("this is text 1"),
                    Text("this is text 2"),
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text("this is text 3"),
                    Text("this is text 4"),
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
