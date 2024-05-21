import 'package:flutter/material.dart';

class CryptoTile extends StatelessWidget {
  const CryptoTile({super.key});

  @override
  Widget build(BuildContext context) {
    final app_theme = Theme.of(context);
    return ListTile(
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
    );
  }
}
