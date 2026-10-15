import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 110,
        backgroundColor: Color(0xFF2874F0),

        title: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.menu),
                  style: IconButton.styleFrom(foregroundColor: Colors.white),
                ),
                SizedBox(width: 4),
                Column(
                  children: [
                    Text("Flipkart", style: TextStyle(color: Colors.white)),
                  ],
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications),
                  style: IconButton.styleFrom(foregroundColor: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart),
                  style: IconButton.styleFrom(foregroundColor: Colors.white),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.search),
                        hintText: "search for products, Brand and More",
                        suffixIcon: Icon(Icons.camera_alt),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
