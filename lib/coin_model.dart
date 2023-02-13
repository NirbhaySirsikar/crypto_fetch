class Coin {
  Coin(
      {required this.name,
      required this.change,
      required this.changePercentage,
      required this.imageURL,
      required this.price,
      required this.symbol});
  String name;
  String symbol;
  String imageURL;
  num price;
  num change;
  num changePercentage;

  factory Coin.fromJson(Map<String, dynamic> json) {
    return Coin(
        name: json['name'],
        change: json['price_change_24'],
        changePercentage: json['price_change_percentage_24h'],
        imageURL: json['image'],
        price: json['current_price'],
        symbol: json['symbol']);
  }
}
List<Coin> coinlist = [];
