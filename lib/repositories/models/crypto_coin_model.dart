class CryptoCoin {
  final String name;
  final String price;
  final String imagePath;
  final String symbol;
  final String market;

  CryptoCoin({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.symbol,
    required this.market,
  });

  factory CryptoCoin.fromJson(String name, Map<String, dynamic> json) {
    return CryptoCoin(
      name: name,
      price: json['USD']['PRICE'],
      imagePath: json['USD']['IMAGEURL'],
      symbol: json['USD']['FROMSYMBOL'],
      market: json['USD']['MARKET'],
    );
  }
}
