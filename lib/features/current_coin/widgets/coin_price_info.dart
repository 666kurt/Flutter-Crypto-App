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
              coin.changeDay,
              style: TextStyle(
                color: getColor(coin.changeDay),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(width: 10),
            Text(
              '${coin.changePrcDay}%',
              style: TextStyle(
                color: getColor(coin.changePrcDay),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        )
      ],
    );
  }

  Color getColor(String percentChange) {
    final changePercentDay =
        double.parse(percentChange.replaceAll(RegExp(r'[^-0-9.]'), ''));
    if (changePercentDay > 0) {
      return Colors.green;
    } else if (changePercentDay < 0) {
      return Colors.red;
    } else {
      return Colors.white54;
    }
  }
}
