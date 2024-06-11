import 'dart:convert';

import '../domain/ip.dart';

void main() {
  String json15 = """
{
  "game": "Dota 2",
  "players": [
    {
      "name": "Miracle-",
      "team": "Nigma",
      "position": 1,
      "ip-address": {
        "host": "40.110.5.5",
        "port": 8080
      }
    },
    {
      "name": "Topson",
      "team": "OG",
      "position": 2,
      "ip-address": {
        "host": "200.100.0.0",
        "port": 8080
      }
    },
    {
      "name": "SumaiL",
      "team": "OG",
      "position": 3,
      "ip-address": {
        "host": "33.9.122.90",
        "port": 8080
      }
    }
  ]
}
""";

  // Erstelle eine Instanz der Klasse IP basierend auf dem JSON-String json15

  Map<String, dynamic> m15 = jsonDecode(json15);

  IP ip15 = IP(ip: m15['players'][0]['ip-address']['host']);

  print(ip15);
}
