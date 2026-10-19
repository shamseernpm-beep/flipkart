import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("profile", style: TextStyle(fontWeight: FontWeight(700))),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              SizedBox(height: 40),
              Center(
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    radius: 38,

                    child: ClipOval(
                      child: Image.asset(
                        "assets/images/am.png",

                        height: 80,
                        width: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                color: const Color.fromARGB(255, 229, 229, 229),
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text("My Account"),
                  trailing: Icon(Icons.arrow_forward_ios, size: 20),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                color: const Color.fromARGB(255, 229, 229, 229),
                child: ListTile(
                  leading: Icon(Icons.library_books_outlined),
                  title: Text("Order"),
                  trailing: Icon(Icons.arrow_forward_ios, size: 20),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                color: const Color.fromARGB(255, 229, 229, 229),
                child: ListTile(
                  leading: Icon(Icons.location_on_outlined),
                  title: Text("Shipping Address"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
