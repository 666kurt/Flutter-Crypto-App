class CryptoCoin {
  final String name;
  final String price;
  final String imagePath;
  final String symbol;
  final String market;
  final List<double> prices;

  CryptoCoin({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.symbol,
    required this.market,
    required this.prices,
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
    );
  }
}

// OPENDAY - цена на открытие
// PRICE - цена на закрытие
// HIGHDAY - максимальная цена
// LOWDAY - минимальная цена
// "$ 68,523.0", -> 68523.0