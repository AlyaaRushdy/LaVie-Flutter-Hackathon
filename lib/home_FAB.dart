import 'package:flutter/material.dart';
import 'package:la_vie_app_1/home.dart';
import 'package:la_vie_app_1/project_colors.dart';

class HomeFAB extends StatelessWidget {
  const HomeFAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: myGreen,
      child: const Icon(Icons.home_outlined, color: Colors.white),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ),
        );
      },
    );
  }
}
