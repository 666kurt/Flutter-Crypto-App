import 'package:flutter/material.dart';

import '../../../repositories/repositories.dart';

class CoinPriceInfo extends StatelessWidget {
  final CryptoCoin coin;
  const CoinPriceInfo({super.key, required this.coin});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          coin.price,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Row(
          children: [
            Text(
              '123',
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 16,
              ),
            ),
            SizedBox(width: 10),
            Text(
              '-12%',
              style: TextStyle(
                color: Colors.red,
                fontSize: 16,
              ),
            ),
          ],
        )
      ],
    );
  }
}
