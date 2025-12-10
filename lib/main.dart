import 'package:flutter/material.dart';

import 'currency_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff181818),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 38,
                        fontWeight: FontWeight.bold,
                      ),
                      "Hey, Selena",
                    ),
                    Text(
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      "Welcom back",
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 70),
            Text(
              style: TextStyle(
                color: Colors.white54,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              "Total Balance",
            ),
            Text(
              style: TextStyle(
                color: Colors.white,
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
              "\$5 194 482",
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button(
                  name: "Transfer",
                  color: Color(0xfff2833a),
                  textColor: Colors.black,
                ),
                Button(
                  name: "Request",
                  color: Colors.white10,
                  textColor: Colors.white,
                ),
              ],
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 38,
                          fontWeight: FontWeight.bold,
                        ),
                        "Wallets",
                      ),
                      Text(
                        style: TextStyle(
                          color: Colors.white54,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                        "View All",
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      CurrencyCard(
                        index: 0,
                        name: "Euro",
                        amount: "6 428",
                        code: "EUR",
                        icon: Icons.euro_sharp,
                        isInverted: false,
                      ),
                      CurrencyCard(
                        index: 1,
                        name: "Bitcoin",
                        amount: "9.785",
                        code: "BTC",
                        icon: Icons.currency_bitcoin,
                        isInverted: true,
                      ),
                      CurrencyCard(
                        index: 2,
                        name: "Dollar",
                        amount: "428",
                        code: "USD",
                        icon: Icons.attach_money,
                        isInverted: false,
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

class Button extends StatelessWidget {
  final String name;

  final Color color;

  final Color textColor;

  const Button({
    super.key,
    required this.name,
    this.color = Colors.white,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        child: Row(
          children: [
            Icon(Icons.currency_bitcoin, color: textColor),
            const SizedBox(width: 8),
            Text(
              style: TextStyle(
                color: textColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              name,
            ),
          ],
        ),
      ),
    );
  }
}
