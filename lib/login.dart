import 'package:flipkart_ui/bottombar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 214, 210, 210),
      body: Center(
        child: Container(
          height: 550,
          width: 400,

          decoration: BoxDecoration(
            color: Color(0xFFF8F9FA),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: SingleChildScrollView(
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
                      controller: usernameController,
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
                      controller: passwordController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        hintText: "enter your password",
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
                    child: ElevatedButton(
                      onPressed: () async {
                        String username = usernameController.text;
                        String password = passwordController.text;

                        if (username.isEmpty || password.isEmpty) {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                icon: Icon(Icons.error),
                                title: Text("please fill fields"),
                                actions: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },

                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                    ),
                                    child: Text("OK"),
                                  ),
                                ],
                              );
                            },
                          );
                        } else if (username == "riswan" && password == "123") {
                          final prefs = await SharedPreferences.getInstance();

                          await prefs.setBool('login', true);
                          bool isLogin = prefs.getBool('login') ?? false;
                          print("$isLogin  its tru man");

                          if (!mounted) return;

                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Bottombar(),
                            ),
                          );
                        } else {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                icon: Icon(Icons.error),
                                title: Text("incorrect user name or password"),
                                content: Text(
                                  "please check your user name and password",
                                ),
                                actions: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                    ),
                                    child: Text("OK"),
                                  ),
                                ],
                              );
                            },
                          );
                        }
                      },

                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
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
