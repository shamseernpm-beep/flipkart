import 'package:flipkart_ui/login.dart';
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
  Future<bool> checkStatus() async {
    final save = await SharedPreferences.getInstance();

    return await save.getBool('login') ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FLIPKART",
      theme: ThemeData(primaryColor: const Color(0xFFFFE60D)),
      home: FutureBuilder(
        future: checkStatus(),
        builder: (context, Snapshot) {
          if (Snapshot.connectionState == ConnectionState.waiting) {
            return Scaffold(body: Center(child: CircularProgressIndicator()));
          }
          if (Snapshot.data == true) {
            return Bottombar();
          }
          return Login();
        },
      ),
    );
  }
}
