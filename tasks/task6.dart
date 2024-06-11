import 'dart:convert';

import '../domain/btc_price.dart';

void main() {
  String json6 = """
{
  "crypto": [
    {
      "time": "Jun 10, 2024 13:25:54 UTC",
      "chartName": "Ethereum",
      "btcPr": {
          "rate": "4,581.537",
          "symbol": "&euro;"
      }
    },
    {
      "time": "Jun 10, 2024 13:25:54 UTC",
      "chartName": "Bitcoin",
      "btcPr": {
          "rate": "64,581.537",
          "symbol": "euro;"
      }
    }
  ]
}
""";

  // Erstelle eine Instanz der Klasse BtcPrice basierend auf dem JSON-String json6 (in Euro)

  Map<String, dynamic> m6 = jsonDecode(json6);

  BtcPrice btc6 = BtcPrice(
      currency: m6['crypto'][1]['btcPr']['rate'],
      price: m6['crypto'][1]['btcPr']['symbol']);

  print(btc6);
}
