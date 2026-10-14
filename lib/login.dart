import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 1000,
          height: 500,
          child: Row(
            children: [
              // LEFT SECTION
              Expanded(
                child: Container(
                  color: const Color(0xFF1F74BA),
                  child: Image.asset(
                    "assets/images/org.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // RIGHT SECTION
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
