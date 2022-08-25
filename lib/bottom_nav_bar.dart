import 'package:flutter/material.dart';

BottomAppBar bottomNavBar = BottomAppBar(
  shape: const CircularNotchedRectangle(),
  notchMargin: 10,
  child: Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      IconButton(
        icon: const Icon(Icons.energy_savings_leaf_outlined),
        color: Colors.black,
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(Icons.qr_code_scanner_outlined),
        color: Colors.black,
        onPressed: () {},
        padding: const EdgeInsets.only(right: 25),
      ),
      IconButton(
        padding: const EdgeInsets.only(left: 25),
        icon: const Icon(Icons.notifications_outlined),
        color: Colors.black,
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(Icons.person_outlined),
        color: Colors.black,
        onPressed: () {},
      ),
    ],
  ),
);
