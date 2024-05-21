import '../features/crypto_list/view/view.dart';
import '../features/current_coin/view.dart';

final routes = {
  '/': (context) => CryptoListScreen(),
  '/current_coin_screen': (context) => CurrentCoinScreen()
};
