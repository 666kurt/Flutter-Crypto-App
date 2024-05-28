import 'package:crypto_app/repositories/repositories.dart';
import 'package:flutter/material.dart';
import '../widgets/widget.dart';

class CurrentCoinScreen extends StatelessWidget {
  const CurrentCoinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final coin = ModalRoute.of(context)!.settings.arguments as CryptoCoin;
    return Scaffold(
      appBar: AppBar(
        title: Text('${coin.name} ${coin.symbol}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CoinPriceInfo(coin: coin),
            SizedBox(height: 40),
            CoinLineChart(chartsData: coin.prices),
            SizedBox(height: 40),
            CoinStatistics(coin: coin),
          ],
        ),
      ),
    );
  }
}
