class CryptoCoin {
  final String name;
  final double price;
  final String imagePath;
  final String toSymbol;

  CryptoCoin({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.toSymbol,
  });

  // factory CryptoCoin.fromJson(Map<String, dynamic> json) {
  //   return CryptoCoin(
  //     name: json.key,
  //     price: price,
  //     imagePath: imagePath,
  //     symbol: symbol,
  //   );
  // }
}
