import 'package:flutter/material.dart';
import '../../repositories/models/crypto_coin_model.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  late Future<CryptoCoin> coinList;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final app_theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Crypto List'),
      ),
      body: ListView.separated(
        itemCount: 15,
        separatorBuilder: (context, index) => Divider(
          color: app_theme.dividerColor,
        ),
        itemBuilder: (context, index) => ListTile(
          title: Text(
            'Bitcoin',
            style: app_theme.textTheme.bodyMedium,
          ),
          subtitle: Text(
            '10000\$',
            style: app_theme.textTheme.labelSmall,
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: app_theme.listTileTheme.iconColor,
          ),
          leading: Image.asset(
            'assets/bitcoin.png',
            height: 30,
            width: 30,
          ),
          onTap: () {
            Navigator.pushNamed(context, '/current_coin_screen');
          },
        ),
      ),
    );
  }
}
