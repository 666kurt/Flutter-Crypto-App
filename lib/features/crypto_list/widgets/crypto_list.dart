import 'package:crypto_app/features/crypto_list/widgets/widgets.dart';
import 'package:crypto_app/repositories/repositories.dart';
import 'package:flutter/material.dart';

class CryptoList extends StatefulWidget {
  const CryptoList({super.key});

  @override
  State<CryptoList> createState() => _CryptoListState();
}

class _CryptoListState extends State<CryptoList> {
  late Future<List<CryptoCoin>> _coins;

  @override
  void initState() {
    _coins = CryptoCoinRepository().fetchCriptoData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final app_theme = Theme.of(context);
    return FutureBuilder(
      future: _coins,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Error ${snapshot.error}'));
        } else {
          final coinsList = snapshot.data!;
          return ListView.separated(
            itemCount: coinsList.length,
            separatorBuilder: (context, index) =>
                Divider(color: app_theme.dividerColor),
            itemBuilder: (context, index) {
              final coin = coinsList[index];
              return CryptoTile(coin: coin);
            },
          );
        }
      },
    );
  }
}
