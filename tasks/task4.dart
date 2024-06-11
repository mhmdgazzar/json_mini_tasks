import 'dart:convert';

import '../domain/btc_price.dart';

void main() {
  String json4 = """
{
  "time": {
    "updated": "Jun 10, 2024 13:25:54 UTC",
    "updatedISO": "2024-06-10T13:25:54+00:00",
    "updateduk": "Jun 10, 2024 at 14:25 BST"
  },
  "disclaimer": "This data was produced from the CoinDesk Bitcoin Price Index (USD). Non-USD currency data converted using hourly conversion rate from openexchangerates.org",
  "chartName": "Bitcoin",
  "bpi": {
    "USD": {
      "code": "USD",
      "symbol": "&#36;",
      "rate": "69,369.638",
      "description": "United States Dollar",
      "rate_float": 69369.6377
    },
    "GBP": {
      "code": "GBP",
      "symbol": "&pound;",
      "rate": "54,568.585",
      "description": "British Pound Sterling",
      "rate_float": 54568.585
    },
    "EUR": {
      "code": "EUR",
      "symbol": "&euro;",
      "rate": "64,581.537",
      "description": "Euro",
      "rate_float": 64581.5372
    }
  }
}
""";

  // Erstelle eine Instanz der Klasse BtcPrice basierend auf dem JSON-String json4 (in Euro)

  Map<String, dynamic> m4 = jsonDecode(json4);

  BtcPrice btc = BtcPrice(
      currency: m4['bpi']['EUR']['code'], price: m4['bpi']['EUR']['rate']);

  print(btc);
}
