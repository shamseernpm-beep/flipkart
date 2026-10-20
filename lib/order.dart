import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            "Orders",
            style: TextStyle(fontWeight: FontWeight(700), color: Colors.black),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search your order here",
                    suffixIcon: Icon(Icons.filter_center_focus_outlined),
                    suffixText: "Filter",
                    contentPadding: EdgeInsets.symmetric(vertical: 8),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 231, 230, 230),
                    width: 2,
                  ),
                ),
                width: double.infinity,
                height: 200,

                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/watch.png",
                          height: 150,
                          width: 150,
                        ),
                      ],
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Delivery expencted by october 29",
                          style: TextStyle(
                            fontWeight: FontWeight(700),
                            fontSize: 13,
                          ),
                        ),
                        Text("Rolex og color silver and green..."),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.arrow_forward_ios)],
                    ),
                  ],
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 228, 227, 227),
                    width: 2,
                  ),
                ),
                width: double.infinity,
                height: 200,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "assets/images/phone.png",
                          height: 150,
                          width: 150,
                        ),
                      ],
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Cancelled Today,Nov 2",
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight(700),
                            fontSize: 15,
                          ),
                        ),
                        Text("I phone 13 pro gold and blue..."),
                      ],
                    ),
                    SizedBox(width: 20),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Icon(Icons.arrow_forward_ios)],
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 219, 219, 219),
                    width: 2,
                  ),
                ),
                child: Center(child: Text("No More Orders")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
