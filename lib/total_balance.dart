import 'package:flutter/material.dart';

class TotalBalance extends StatefulWidget {
  const TotalBalance({super.key, required this.totalBalance});

  final int totalBalance;

  @override
  State<TotalBalance> createState() => _TotalBalanceState();
}

class _TotalBalanceState extends State<TotalBalance> {
  int totalBalance = 0;

  @override
  void initState() {
    super.initState();
    totalBalance = widget.totalBalance;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 70),
        const Text(
          style: TextStyle(
            color: Colors.white54,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          "Total Balance",
        ),
        Text(
          style: const TextStyle(
            color: Colors.white,
            fontSize: 38,
            fontWeight: FontWeight.bold,
          ),
          "\$$totalBalance",
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FilledButton(
              onPressed: () => {
                setState(() {
                  totalBalance += 100;
                }),
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xfff2833a),
                ),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 27),
                ),
              ),
              child: const Row(
                children: [
                  Icon(Icons.currency_bitcoin, color: Colors.black),
                  SizedBox(width: 8),
                  Text(
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    "Transfer",
                  ),
                ],
              ),
            ),
            FilledButton(
              onPressed: () => {
                setState(() {
                  totalBalance -= 100;
                }),
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white10),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 27),
                ),
              ),
              child: const Row(
                children: [
                  Icon(Icons.currency_bitcoin, color: Colors.white),
                  SizedBox(width: 8),
                  Text(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    "Request",
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
