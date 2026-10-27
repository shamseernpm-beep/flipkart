import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'splash.dart';
// import 'login.dart';
import 'bottombar.dart';

void main() {
  runApp(const Flipkart());
}

class Flipkart extends StatelessWidget {
  const Flipkart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FLIPKART",
      theme: ThemeData(primaryColor: const Color(0xFFFFE60D)),
      home: Splash(),
    );
  }
}
