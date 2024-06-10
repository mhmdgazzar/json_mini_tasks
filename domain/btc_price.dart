class BtcPrice {
  final String currency;
  final String price;

  BtcPrice({
    required this.currency,
    required this.price,
  });

  @override
  String toString() {
    return "The price of Bitcoin is $price $currency";
  }
}
