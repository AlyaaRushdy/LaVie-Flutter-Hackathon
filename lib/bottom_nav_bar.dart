import 'package:flutter/material.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:la_vie_app_1/blog.dart';
import 'package:la_vie_app_1/user_profile.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 10,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //blog
          IconButton(
            icon: const Icon(Icons.energy_savings_leaf_outlined),
            color: Colors.black,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Blog(),
                ),
              );
            },
          ),

          //qr scan
          IconButton(
            icon: const Icon(Icons.qr_code_scanner_outlined),
            color: Colors.black,
            onPressed: () {
              scanner.scan();
            },
            padding: const EdgeInsets.only(right: 25),
          ),

          //notifiction
          IconButton(
            padding: const EdgeInsets.only(left: 25),
            icon: const Icon(Icons.notifications_outlined),
            color: Colors.black,
            onPressed: () {},
          ),

          //profile
          IconButton(
            icon: const Icon(Icons.person_outlined),
            color: Colors.black,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const UserProfile(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
