import 'package:crypto_app/repositories/repositories.dart';
import 'package:flutter/material.dart';

class CoinStatistics extends StatelessWidget {
  final CryptoCoin coin;
  const CoinStatistics({super.key, required this.coin});

  @override
  Widget build(BuildContext context) {
    final app_theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildStatisticItem(coin.price, coin.name, app_theme),
              _buildStatisticItem(coin.price, coin.name, app_theme),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildStatisticItem(coin.price, coin.name, app_theme),
              _buildStatisticItem(coin.price, coin.name, app_theme),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildStatisticItem(coin.price, coin.name, app_theme),
              _buildStatisticItem(coin.price, coin.name, app_theme),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStatisticItem(String value, String title, ThemeData theme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          value,
          style: theme.textTheme.bodyMedium,
        ),
        SizedBox(height: 4),
        Text(
          title,
          style: theme.textTheme.labelSmall,
        )
      ],
    );
  }
}
