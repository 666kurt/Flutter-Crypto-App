import 'package:crypto_app/features/crypto_list/bloc/crypto_list_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/crypto_list/view/view.dart';
import '../../features/current_coin/view.dart';
import '../../repositories/repositories.dart';

final routes = {
  '/': (context) => BlocProvider(
        create: (context) => CryptoBloc(CryptoCoinRepository()),
        child: CryptoListScreen(),
      ),
  '/current_coin_screen': (context) => CurrentCoinScreen()
};
