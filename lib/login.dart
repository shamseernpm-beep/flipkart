import 'package:flipkart_ui/bottombar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

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
            color: const Color(0xFFF8F9FA),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(height: 40),

                    const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "Sign in to your account",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),

                    const SizedBox(height: 50),

                    SizedBox(
                      width: double.infinity,
                      child: TextFormField(
                        controller: usernameController,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(),
                          labelText: "User name",
                          hintText: "enter your user name",
                        ),
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return "Please enter username";
                          }

                          return null;
                        },
                      ),
                    ),

                    const SizedBox(height: 25),

                    SizedBox(
                      width: double.infinity,

                      child: TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.password),
                          hintText: "enter your password",
                          labelText: "Password",
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter password";
                          }

                          return null;
                        },
                      ),
                    ),

                    const SizedBox(height: 5),

                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "forget password",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            String username = usernameController.text.trim();

                            String password = passwordController.text;

                            if (username == "riswan" && password == "123") {
                              final save =
                                  await SharedPreferences.getInstance();

                              await save.setBool('login', true);

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
                                    icon: const Icon(Icons.error),
                                    title: const Text(
                                      "Incorrect username or password",
                                    ),
                                    content: const Text(
                                      "Please check your username and password",
                                    ),
                                    actions: [
                                      ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.blue,
                                        ),
                                        child: const Text("OK"),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),

                    Row(
                      children: [
                        const Text("Don't have an account?"),
                        TextButton(
                          onPressed: () {},
                          child: const Text("Register here"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
