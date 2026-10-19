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
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      "assets/images/watch.png",
                      width: 150,
                      height: 100,
                    ),
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
