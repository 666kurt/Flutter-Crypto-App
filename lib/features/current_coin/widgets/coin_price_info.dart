import 'package:flutter/material.dart';

import '../../../repositories/repositories.dart';

class CoinPriceInfo extends StatelessWidget {
  final CryptoCoin coin;
  const CoinPriceInfo({super.key, required this.coin});

  @override
  Widget build(BuildContext context) {
    final app_theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          coin.price,
          style: app_theme.textTheme.bodyLarge,
        ),
        Row(
          children: [
            Text(
              coin.changeHour,
              style: app_theme.textTheme.labelSmall,
            ),
            SizedBox(width: 10),
            Text(
              '${getVolume(coin.price, coin.openDay)}%',
              style: app_theme.textTheme.labelSmall,
            ),
          ],
        )
      ],
    );
  }

  int getVolume(String price, String openDay) {
    return 15;
  }
}
