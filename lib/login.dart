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
        child: Expanded(
          child: Container(
            child: Row(
              children: [
                Container(
                  color: Color(0xFF1F74BA),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 800,
                        width: 500,
                        child: Image.asset("assets/images/org.jpg"),
                      ),
                      Text("hello world"),
                      Text("hello world"),
                      Text("hello world"),
                      Text("hello world"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
