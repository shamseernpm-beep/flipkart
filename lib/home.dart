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
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Products",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight(500),
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 15),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                childAspectRatio: 0.90,
                children: [
                  Card(
                    elevation: 4,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Image.asset("assets/images/phone.png"),
                          ),
                          Text(
                            "I phone 13 pro",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight(700),
                            ),
                          ),
                          Text(
                            "₹59,999",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight(700),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white,
                            ),
                            child: Text("Buy Now"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(child: Image.asset("assets/images/lap.png")),
                          Text(
                            "LAPTOP",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight(700),
                            ),
                          ),
                          Text(
                            "₹29,999",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight(700),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white,
                            ),
                            child: Text("Buy Now"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Image.asset("assets/images/hair.png"),
                          ),
                          Text(
                            "Head Phone",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight(700),
                            ),
                          ),
                          Text(
                            "₹999",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight(700),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white,
                            ),
                            child: Text("Buy Now"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Image.asset("assets/images/watch.png"),
                          ),
                          Text(
                            "Rolex",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight(700),
                            ),
                          ),
                          Text(
                            "₹10,0000",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight(700),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white,
                            ),
                            child: Text("Buy Now"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Image.asset("assets/images/lipstick.png"),
                          ),
                          Text(
                            "Lipstick",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight(700),
                            ),
                          ),
                          Text(
                            "₹499",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight(700),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white,
                            ),
                            child: Text("Buy Now"),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 4,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Image.asset("assets/images/camera.png"),
                          ),
                          Text(
                            "Camera",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight(700),
                            ),
                          ),
                          Text(
                            "₹25,999",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight(700),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white,
                            ),
                            child: Text("Buy Now"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "PROFILE"),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   int selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 110,
//         backgroundColor: Color(0xFF2874F0),
//         title: Column(
//           children: [
//             Row(
//               children: [
//                 IconButton(
//                   onPressed: () {},
//                   icon: Icon(Icons.menu),
//                   style: IconButton.styleFrom(foregroundColor: Colors.white),
//                 ),
//                 SizedBox(width: 4),
//                 Column(
//                   children: [
//                     Text("Flipkart", style: TextStyle(color: Colors.white)),
//                   ],
//                 ),
//                 Spacer(),
//                 IconButton(
//                   onPressed: () {},
//                   icon: Icon(Icons.notifications),
//                   style: IconButton.styleFrom(foregroundColor: Colors.white),
//                 ),
//                 IconButton(
//                   onPressed: () {},
//                   icon: Icon(Icons.shopping_cart),
//                   style: IconButton.styleFrom(foregroundColor: Colors.white),
//                 ),
//               ],
//             ),
//             Row(
//               children: [
//                 Expanded(
//                   child: SizedBox(
//                     child: TextField(
//                       decoration: InputDecoration(
//                         border: OutlineInputBorder(),
//                         prefixIcon: Icon(Icons.search),
//                         hintText: "search for products, Brand and More",
//                         suffixIcon: Icon(Icons.camera_alt),
//                         filled: true,
//                         fillColor: Colors.white,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),

//       // Your existing Home UI
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(8),
//           child: Column(
//             children: [
//               Image.asset("assets/images/big.jpeg", width: double.infinity),
//               SizedBox(height: 20),

//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   spacing: 20,
//                   children: [
//                     // Mobiles
//                     Column(
//                       children: [
//                         Container(
//                           height: 80,
//                           width: 80,
//                           decoration: BoxDecoration(
//                             color: Colors.blue.shade100,
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           child: IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.phone_android,
//                               size: 50,
//                               color: Colors.blue,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           "Mobiles",
//                           style: TextStyle(fontSize: 20, color: Colors.black),
//                         ),
//                       ],
//                     ),

//                     SizedBox(width: 6),

//                     // Laptops
//                     Column(
//                       children: [
//                         Container(
//                           height: 80,
//                           width: 80,
//                           decoration: BoxDecoration(
//                             color: Colors.blue.shade100,
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           child: IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.laptop,
//                               size: 50,
//                               color: Colors.blue,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           "laptops",
//                           style: TextStyle(fontSize: 20, color: Colors.black),
//                         ),
//                       ],
//                     ),

//                     SizedBox(width: 6),

//                     // TV
//                     Column(
//                       children: [
//                         Container(
//                           height: 80,
//                           width: 80,
//                           decoration: BoxDecoration(
//                             color: Colors.blue.shade100,
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           child: IconButton(
//                             onPressed: () {},
//                             icon: Icon(Icons.tv, size: 50, color: Colors.blue),
//                           ),
//                         ),
//                         Text(
//                           "TV",
//                           style: TextStyle(fontSize: 20, color: Colors.black),
//                         ),
//                       ],
//                     ),

//                     SizedBox(width: 6),

//                     // Fashion
//                     Column(
//                       children: [
//                         Container(
//                           height: 80,
//                           width: 80,
//                           decoration: BoxDecoration(
//                             color: Colors.blue.shade100,
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           child: IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.checkroom,
//                               size: 50,
//                               color: Colors.blue,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           "Fashion",
//                           style: TextStyle(fontSize: 20, color: Colors.black),
//                         ),
//                       ],
//                     ),

//                     SizedBox(width: 6),

//                     // Furniture
//                     Column(
//                       children: [
//                         Container(
//                           height: 80,
//                           width: 80,
//                           decoration: BoxDecoration(
//                             color: Colors.blue.shade100,
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           child: IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.chair,
//                               size: 50,
//                               color: Colors.blue,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           "Furniture",
//                           style: TextStyle(fontSize: 20, color: Colors.black),
//                         ),
//                       ],
//                     ),

//                     SizedBox(width: 6),

//                     // Books
//                     Column(
//                       children: [
//                         Container(
//                           height: 80,
//                           width: 80,
//                           decoration: BoxDecoration(
//                             color: Colors.blue.shade100,
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           child: IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.menu_book,
//                               size: 50,
//                               color: Colors.blue,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           "BOOKS",
//                           style: TextStyle(fontSize: 20, color: Colors.black),
//                         ),
//                       ],
//                     ),

//                     SizedBox(width: 6),

//                     // Watches
//                     Column(
//                       children: [
//                         Container(
//                           height: 80,
//                           width: 80,
//                           decoration: BoxDecoration(
//                             color: Colors.blue.shade100,
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           child: IconButton(
//                             onPressed: () {},
//                             icon: Icon(
//                               Icons.watch,
//                               size: 50,
//                               color: Colors.blue,
//                             ),
//                           ),
//                         ),
//                         Text(
//                           "Watches",
//                           style: TextStyle(fontSize: 20, color: Colors.black),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),

//               SizedBox(height: 20),

//               Text(
//                 "Products",
//                 style: TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight(500),
//                   color: Colors.black,
//                 ),
//               ),

//               SizedBox(height: 15),

//               // Your existing product grid
//               GridView.count(
//                 crossAxisCount: 2,
//                 shrinkWrap: true,
//                 physics: NeverScrollableScrollPhysics(),
//                 crossAxisSpacing: 20,
//                 mainAxisSpacing: 20,
//                 childAspectRatio: 0.90,
//                 children: [
//                   // iPhone
//                   Card(
//                     elevation: 4,
//                     child: Padding(
//                       padding: EdgeInsets.all(10),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Expanded(
//                             child: Image.asset("assets/images/phone.png"),
//                           ),
//                           Text(
//                             "I phone 13 pro",
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight(700),
//                             ),
//                           ),
//                           Text(
//                             "₹59,999",
//                             style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight(700),
//                             ),
//                           ),
//                           ElevatedButton(
//                             onPressed: () {},
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.blue,
//                               foregroundColor: Colors.white,
//                             ),
//                             child: Text("Buy Now"),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),

//                   // Laptop
//                   Card(
//                     elevation: 4,
//                     child: Padding(
//                       padding: EdgeInsets.all(10),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Expanded(child: Image.asset("assets/images/lap.png")),
//                           Text(
//                             "LAPTOP",
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight(700),
//                             ),
//                           ),
//                           Text(
//                             "₹29,999",
//                             style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight(700),
//                             ),
//                           ),
//                           ElevatedButton(
//                             onPressed: () {},
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.blue,
//                               foregroundColor: Colors.white,
//                             ),
//                             child: Text("Buy Now"),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),

//                   // Headphones
//                   Card(
//                     elevation: 4,
//                     child: Padding(
//                       padding: EdgeInsets.all(10),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Expanded(
//                             child: Image.asset("assets/images/hair.png"),
//                           ),
//                           Text(
//                             "Head Phone",
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight(700),
//                             ),
//                           ),
//                           Text(
//                             "₹999",
//                             style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight(700),
//                             ),
//                           ),
//                           ElevatedButton(
//                             onPressed: () {},
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.blue,
//                               foregroundColor: Colors.white,
//                             ),
//                             child: Text("Buy Now"),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),

//                   // Watch
//                   Card(
//                     elevation: 4,
//                     child: Padding(
//                       padding: EdgeInsets.all(10),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Expanded(
//                             child: Image.asset("assets/images/watch.png"),
//                           ),
//                           Text(
//                             "Rolex",
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight(700),
//                             ),
//                           ),
//                           Text(
//                             "₹10,0000",
//                             style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight(700),
//                             ),
//                           ),
//                           ElevatedButton(
//                             onPressed: () {},
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.blue,
//                               foregroundColor: Colors.white,
//                             ),
//                             child: Text("Buy Now"),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),

//                   // Lipstick
//                   Card(
//                     elevation: 4,
//                     child: Padding(
//                       padding: EdgeInsets.all(10),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Expanded(
//                             child: Image.asset("assets/images/lipstick.png"),
//                           ),
//                           Text(
//                             "Lipstick",
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight(700),
//                             ),
//                           ),
//                           Text(
//                             "₹499",
//                             style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight(700),
//                             ),
//                           ),
//                           ElevatedButton(
//                             onPressed: () {},
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.blue,
//                               foregroundColor: Colors.white,
//                             ),
//                             child: Text("Buy Now"),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),

//                   // Camera
//                   Card(
//                     elevation: 4,
//                     child: Padding(
//                       padding: EdgeInsets.all(10),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Expanded(
//                             child: Image.asset("assets/images/camera.png"),
//                           ),
//                           Text(
//                             "Camera",
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight(700),
//                             ),
//                           ),
//                           Text(
//                             "₹25,999",
//                             style: TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight(700),
//                             ),
//                           ),
//                           ElevatedButton(
//                             onPressed: () {},
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.blue,
//                               foregroundColor: Colors.white,
//                             ),
//                             child: Text("Buy Now"),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),

//       // Bottom Navigation Bar
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: selectedIndex,
//         onTap: (index) {
//           setState(() {
//             selectedIndex = index;
//           });
//         },
//         type: BottomNavigationBarType.fixed,
//         selectedItemColor: Color(0xFF2874F0),
//         unselectedItemColor: Colors.grey,
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite),
//             label: 'Wishlist',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart),
//             label: 'Cart',
//           ),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//         ],
//       ),
//     );
//   }
// }
