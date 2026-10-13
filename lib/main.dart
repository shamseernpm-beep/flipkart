import 'package:flutter/material.dart';

import 'splash.dart';

void main() {
  runApp(Flipkart());
}

class Flipkart extends StatelessWidget {
  const Flipkart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FLIPKART",

      home: Splash(),
      theme: ThemeData(primaryColor: Color(0xFFFFE60D)),
    );
  }
}
