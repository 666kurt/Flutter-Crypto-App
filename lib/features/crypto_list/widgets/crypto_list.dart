import 'package:crypto_app/features/crypto_list/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CryptoList extends StatelessWidget {
  const CryptoList({super.key});

  @override
  Widget build(BuildContext context) {
    final app_theme = Theme.of(context);
    return ListView.separated(
      itemCount: 15,
      separatorBuilder: (context, index) => Divider(
        color: app_theme.dividerColor,
      ),
      itemBuilder: (context, index) => CryptoTile(),
    );
  }
}
