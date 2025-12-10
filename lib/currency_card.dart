import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final int index;
  final String name;
  final String amount;
  final String code;
  final IconData icon;

  final bool isInverted;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.amount,
    required this.code,
    required this.icon,
    required this.isInverted,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -20 * index.toDouble()),
      child: Container(
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : Colors.white10,
          borderRadius: BorderRadius.circular(20),
        ),
        clipBehavior: Clip.hardEdge,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  style: TextStyle(
                    color: isInverted ? Colors.black : Colors.white,
                    fontSize: 24,
                  ),
                  name,
                ),
                const SizedBox(height: 5),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      style: TextStyle(
                        color: isInverted ? Colors.black38 : Colors.white54,
                        fontSize: 18,
                      ),
                      amount,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      style: TextStyle(
                        color: isInverted ? Colors.black38 : Colors.white54,
                        fontSize: 16,
                      ),
                      code,
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2,
              child: Transform.translate(
                offset: const Offset(5, 15),
                child: Icon(
                  icon,
                  color: isInverted ? Colors.black : Colors.white,
                  size: 85,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
