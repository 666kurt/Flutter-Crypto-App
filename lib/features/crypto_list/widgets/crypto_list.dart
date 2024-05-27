import 'package:crypto_app/features/crypto_list/bloc/crypto_list_bloc.dart';
import 'package:crypto_app/features/crypto_list/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CryptoList extends StatefulWidget {
  const CryptoList({super.key});

  @override
  State<CryptoList> createState() => _CryptoListState();
}

class _CryptoListState extends State<CryptoList> {
  @override
  void initState() {
    super.initState();
    context.read<CryptoBloc>().add(LoadCryptoList());
  }

  @override
  Widget build(BuildContext context) {
    final app_theme = Theme.of(context);
    return BlocBuilder<CryptoBloc, CryptoState>(builder: (context, state) {
      if (state is CryptoLoading) {
        return Center(child: CircularProgressIndicator());
      } else if (state is CryptoLoadFailure) {
        return Center(child: Text('Error: ${state.error}'));
      } else if (state is CryptoListLoadSuccess) {
        final coinsList = state.coins;
        return ListView.separated(
          itemCount: coinsList.length,
          separatorBuilder: (context, index) =>
              Divider(color: app_theme.dividerColor),
          itemBuilder: (context, index) {
            final coin = coinsList[index];
            return CryptoTile(coin: coin);
          },
        );
      } else {
        return Center(child: Text('Some problems :)'));
      }
    });
  }
}
