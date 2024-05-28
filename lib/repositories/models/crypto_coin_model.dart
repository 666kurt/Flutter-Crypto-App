class CryptoCoin {
  final String name;
  final String price;
  final String imagePath;
  final String symbol;
  final String market;
  final List<double> prices;
  final String openDay;
  final String highDay;
  final String lowDay;
  final String changeHour;

  CryptoCoin({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.symbol,
    required this.market,
    required this.prices,
    required this.openDay,
    required this.highDay,
    required this.lowDay,
    required this.changeHour,
  });

  factory CryptoCoin.fromJson(String name, Map<String, dynamic> json) {
    double convertPrice(String price) {
      return double.parse(price.replaceAll(RegExp(r'[^0-9.]'), ''));
    }

    List<double> prices = [
      convertPrice(json['USD']['OPENDAY']),
      convertPrice(json['USD']['HIGHDAY']),
      convertPrice(json['USD']['LOWDAY']),
      convertPrice(json['USD']['PRICE']),
    ];

    return CryptoCoin(
      name: name,
      price: json['USD']['PRICE'],
      imagePath: json['USD']['IMAGEURL'],
      symbol: json['USD']['FROMSYMBOL'],
      market: json['USD']['MARKET'],
      prices: prices,
      openDay: json['USD']['OPENDAY'],
      highDay: json['USD']['HIGHDAY'],
      lowDay: json['USD']['LOWDAY'],
      changeHour: json['USD']['CHANGEHOUR'],
    );
  }
}

// OPENDAY - цена на открытие
// PRICE - цена на закрытие
// HIGHDAY - максимальная цена
// LOWDAY - минимальная цена
// "$ 68,523.0", -> 68523.0