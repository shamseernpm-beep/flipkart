import 'package:flutter/material.dart';

class Bag extends StatefulWidget {
  const Bag({super.key});

  @override
  State<Bag> createState() => _BagState();
}

class _BagState extends State<Bag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,

        title: Center(
          child: Text(
            "Shopping Cart",
            style: TextStyle(fontWeight: FontWeight(700)),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Card(
              elevation: 4,

              child: Row(
                children: [
                  Container(
                    height: 120,
                    width: 170,
                    color: const Color.fromARGB(255, 238, 237, 237),
                    child: Image.asset(
                      "assets/images/watch.png",
                      width: 150,
                      height: 100,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(
                        "Rolex Watchs",
                        style: TextStyle(fontWeight: FontWeight(700)),
                      ),
                      SizedBox(height: 2),
                      Text("Silver and green   ⭐ 5.5"),
                      SizedBox(height: 2),
                      Text("₹"),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 7,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            ),
                            child: Text("- 1 +"),
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.symmetric(horizontal: 13),
                              minimumSize: Size(0, 19),
                            ),
                            child: Text(
                              "SAVE LATER",
                              style: TextStyle(fontWeight: FontWeight(700)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
