import 'package:crypto_app/repositories/models/crypto_coin_model.dart';
import 'package:dio/dio.dart';

class CryptoCoinRepository {
  final Dio _dio = Dio();
  final URL =
      'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH&tsyms=USD,EUR';

  Future<List<CryptoCoin>> fetchCriptoData() async {}
}
