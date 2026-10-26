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

  Future<bool> checkLoginStatus() async {
    final save = await SharedPreferences.getInstance();

    return save.getBool('login') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FLIPKART",
      theme: ThemeData(primaryColor: const Color(0xFFFFE60D)),
      home: FutureBuilder<bool>(
        future: checkLoginStatus(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }

          // if (snapshot.data == true) {
          //   return Bottombar();
          // }

          return Splash();
        },
      ),
    );
  }
}
