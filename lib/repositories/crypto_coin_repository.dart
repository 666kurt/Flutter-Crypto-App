import 'package:crypto_app/repositories/models/crypto_coin_model.dart';
import 'package:dio/dio.dart';

class CryptoCoinRepository {
  final Dio _dio = Dio();
  final URL =
      'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,TON,USDT&tsyms=USD';

  Future<List<CryptoCoin>> fetchCriptoData() async {
    try {
      final responce = await _dio.get(URL);

      if (responce.statusCode == 200) {
        final data = responce.data;
        final displayData = data['DISPLAY'] as Map<String, dynamic>;

        return displayData.keys
            .map((key) => CryptoCoin.fromJson(key, displayData[key]))
            .toList();
      } else {
        throw Exception('Failed to load data with: ${responce.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load data: ${e}');
    }
  }
}
