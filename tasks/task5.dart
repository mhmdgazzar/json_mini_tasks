import 'dart:convert';

import '../domain/btc_price.dart';

void main() {
  String json5 = """
{
  "time": "Jun 10, 2024 13:25:54 UTC",
  "chartName": "Bitcoin",
  "btcPricing": {
      "rate": "64,581.537",
      "symbol": "&euro;"
  }
}
""";

  // Erstelle eine Instanz der Klasse BtcPrice basierend auf dem JSON-String json5 (in Euro)

  Map<String, dynamic> m5 = jsonDecode(json5);

  BtcPrice btc5 = BtcPrice(
      currency: m5['btcPricing']['symbol'], price: m5['btcPricing']['rate']);

  print(btc5);
}
