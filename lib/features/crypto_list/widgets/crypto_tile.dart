import 'package:crypto_app/repositories/repositories.dart';
import 'package:flutter/material.dart';

class CryptoTile extends StatelessWidget {
  final CryptoCoin coin;
  const CryptoTile({super.key, required this.coin});

  @override
  Widget build(BuildContext context) {
    final app_theme = Theme.of(context);
    return ListTile(
      title: Text(
        coin.name,
        style: app_theme.textTheme.bodyMedium,
      ),
      subtitle: Text(
        coin.price,
        style: app_theme.textTheme.labelSmall,
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: app_theme.listTileTheme.iconColor,
      ),
      leading: Image.network('https://www.cryptocompare.com/${coin.imagePath}'),
      onTap: () {
        Navigator.pushNamed(context, '/current_coin_screen', arguments: coin);
      },
    );
  }
}
