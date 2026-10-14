import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const new({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 214, 210, 210),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Container(
            height: 500,
            width: 400,

            decoration: BoxDecoration(
              color: Color(0xFFF8F9FA),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(40),
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 30,
                      fontWeight: FontWeight(600),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Sign in to your account",
                    style: TextStyle(fontWeight: FontWeight(500)),
                  ),
                  SizedBox(height: 50),
                  Container(
                    color: const Color.fromARGB(255, 220, 220, 220),
                    width: double.infinity,

                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(),
                        labelText: "User name",
                        hintText: "enter your user name",
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Container(
                    width: double.infinity,
                    color: const Color.fromARGB(255, 220, 220, 220),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        hintText: "ENTER YOUR PASSWORD",
                        labelText: "password",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Align(
                    alignment: Alignment.topRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "forget password",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    color: Colors.blue,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(fontWeight: FontWeight(600)),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text("Don't have an account?"),
                      TextButton(
                        onPressed: () {},
                        child: Text("Register here"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
