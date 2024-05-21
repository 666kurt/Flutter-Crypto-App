class CryptoCoin {
  final String name;
  final double price;
  final String imagePath;
  final String symbol;

  CryptoCoin({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.symbol,
  });

  factory CryptoCoin.fromJson(String name, Map<String, dynamic> json) {
    return CryptoCoin(
      name: name,
      price: json['USD']['PRICE'],
      imagePath: json['USD']['IMAGEURL'],
      symbol: json['USD']['FROMSYMBOL'],
    );
  }
}
