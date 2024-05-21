import 'package:crypto_app/repositories/repositories.dart';
import 'package:flutter/material.dart';

class CurrentCoinScreen extends StatelessWidget {
  const CurrentCoinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final coin = ModalRoute.of(context)!.settings.arguments as CryptoCoin;
    return Scaffold(
      appBar: AppBar(
        title: Text('${coin.name} ${coin.symbol}'),
      ),
    );
  }
}
