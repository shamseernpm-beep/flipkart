import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'login.dart';
import 'bottombar.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () async {
      checkLogin();
    });
  }

  Future<void> checkLogin() async {
    final save = await SharedPreferences.getInstance();

    final isLoggined = save.getBool("login") ?? false;

    if (!mounted) return;

    if (isLoggined) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Bottombar()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE60D),
      body: Center(
        child: SizedBox(
          height: 400,
          width: 700,
          child: Image.asset("assets/images/flip.jpg"),
        ),
      ),
    );
  }
}
