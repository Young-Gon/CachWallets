import 'package:cach_wallets/total_balance.dart';
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TotalBalance(totalBalance: 5194482),
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
            ),
          ],
        ),
      ),
    );
  }
}
