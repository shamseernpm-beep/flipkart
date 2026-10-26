import 'package:flipkart_ui/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
        backgroundColor: Colors.blue,
        toolbarHeight: 80,
        title: Center(
          child: Text("Account", style: TextStyle(fontWeight: FontWeight(700))),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
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
              SizedBox(height: 40),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                color: const Color.fromARGB(255, 229, 229, 229),
                child: ListTile(
                  leading: Icon(Icons.person),
                  title: Text("My Account"),
                  trailing: Icon(Icons.arrow_forward_ios, size: 20),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                color: const Color.fromARGB(255, 229, 229, 229),
                child: ListTile(
                  leading: Icon(Icons.library_books_outlined),
                  title: Text("Order"),
                  trailing: Icon(Icons.arrow_forward_ios, size: 20),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                color: const Color.fromARGB(255, 229, 229, 229),
                child: ListTile(
                  leading: Icon(Icons.location_on_outlined),
                  title: Text("Shipping Address"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                color: const Color.fromARGB(255, 229, 229, 229),
                child: ListTile(
                  leading: Icon(Icons.notification_add),
                  title: Text("Notifications"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                color: const Color.fromARGB(255, 229, 229, 229),
                child: ListTile(
                  leading: Icon(Icons.location_on_outlined),
                  title: Text("Shipping Address"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                color: const Color.fromARGB(255, 229, 229, 229),
                child: ListTile(
                  leading: Icon(Icons.headset_mic),
                  title: Text("Contact us"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                color: const Color.fromARGB(255, 229, 229, 229),
                child: ListTile(
                  onTap: () async {
                    final save = await SharedPreferences.getInstance();

                    await save.setBool('login', false);

                    if (!mounted) return;

                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  leading: Icon(Icons.logout),
                  title: Text("Logout"),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
