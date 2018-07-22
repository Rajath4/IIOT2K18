import 'package:flutter/material.dart';
import 'package:iiot2k18/HomeBottomNavigation.dart';

class MainHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "IIOT-2K17",
      home: BottomNavigationDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}
