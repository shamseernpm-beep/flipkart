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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Image.asset("assets/images/big.jpeg", width: double.infinity),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 20,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(12),
                          ),

                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.phone_android,
                              size: 50,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Text(
                          "Mobiles",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(width: 6),
                    Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.laptop,
                              size: 50,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Text(
                          "laptops",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(width: 6),
                    Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.tv, size: 50, color: Colors.blue),
                          ),
                        ),
                        Text(
                          "TV",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(width: 6),
                    Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.checkroom,
                              size: 50,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Text(
                          "Fashion",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(width: 6),
                    Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.chair,
                              size: 50,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Text(
                          "Furniture",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(width: 6),
                    Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.menu_book,
                              size: 50,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Text(
                          "BOOKS",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(width: 6),
                    Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.watch,
                              size: 50,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Text(
                          "Watches",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(width: 6),
                    Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.toys,
                              size: 50,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Text(
                          "TOYS",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(width: 6),
                    Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.camera_alt,
                              size: 50,
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        Text(
                          "Camera",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        "assets/images/lap.png",
                        height: 100,
                        width: 100,
                      ),
                      Text(
                        "LAPTOP",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight(700),
                        ),
                      ),
                      Text(
                        "₹1,499",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight(700),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                          ),
                          child: Text("Buy Now"),
                        ),
                      ),
                    ],
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
