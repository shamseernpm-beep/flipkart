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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Card(
                elevation: 4,

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 120,
                      width: 170,

                      child: Image.asset(
                        "assets/images/watch.png",
                        width: 150,
                        height: 100,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Text(
                                  "Rolex Watchs",
                                  style: TextStyle(fontWeight: FontWeight(700)),
                                ),
                                SizedBox(height: 4),
                                Text("Silver and green   ⭐ 5.5"),
                                SizedBox(height: 4),
                                Text("₹10,0000"),
                                SizedBox(height: 16),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                          horizontal: 15,
                                          vertical: 1,
                                        ),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                          ),
                                        ),
                                        child: Text("- 1 +"),
                                      ),
                                      SizedBox(width: 50),
                                      OutlinedButton(
                                        onPressed: () {},
                                        style: OutlinedButton.styleFrom(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 13,
                                          ),
                                          minimumSize: Size(0, 19),
                                        ),
                                        child: Text(
                                          "SAVE LATER",
                                          style: TextStyle(
                                            fontWeight: FontWeight(700),
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(width: 80),
                                OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 13,
                                    ),
                                    minimumSize: Size(0, 19),
                                  ),
                                  child: Text(
                                    "DELETE",
                                    style: TextStyle(
                                      fontWeight: FontWeight(700),
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Card(
                elevation: 4,

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 120,
                      width: 170,

                      child: Image.asset(
                        "assets/images/phone.png",
                        width: 150,
                        height: 100,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [
                                Text(
                                  "i phone 13 pro",
                                  style: TextStyle(fontWeight: FontWeight(700)),
                                ),
                                SizedBox(height: 4),
                                Text("Gold and blue   ⭐ 6.0"),
                                SizedBox(height: 4),
                                Text("₹59,999"),
                                SizedBox(height: 16),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                          horizontal: 15,
                                          vertical: 1,
                                        ),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                          ),
                                        ),
                                        child: Text("- 1 +"),
                                      ),
                                      SizedBox(width: 50),
                                      OutlinedButton(
                                        onPressed: () {},
                                        style: OutlinedButton.styleFrom(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 13,
                                          ),
                                          minimumSize: Size(0, 19),
                                        ),
                                        child: Text(
                                          "SAVE LATER",
                                          style: TextStyle(
                                            fontWeight: FontWeight(700),
                                            color: Colors.green,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(width: 80),
                                OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 13,
                                    ),
                                    minimumSize: Size(0, 19),
                                  ),
                                  child: Text(
                                    "DELETE",
                                    style: TextStyle(
                                      fontWeight: FontWeight(700),
                                      color: Colors.red,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Price Details",
                            style: TextStyle(
                              fontWeight: FontWeight(700),
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("price (2 items)"),
                              Text("₹15,9999"),
                            ],
                          ),
                          SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text("Discount"), Text("₹2000")],
                          ),
                          SizedBox(height: 5),
                          Divider(height: 2),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Totel Amount",
                                style: TextStyle(
                                  fontWeight: FontWeight(700),
                                  fontSize: 15,
                                ),
                              ),
                              Text("₹15,7999"),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 10,
                            children: [
                              OutlinedButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.credit_card),
                                label: Text("Card"),
                              ),

                              OutlinedButton.icon(
                                onPressed: () {},
                                label: Text("UPI"),
                                icon: Icon(
                                  Icons.account_balance_wallet_outlined,
                                ),
                              ),
                              OutlinedButton.icon(
                                onPressed: () {},
                                label: Text("COD"),
                                icon: Icon(Icons.email_outlined),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
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
