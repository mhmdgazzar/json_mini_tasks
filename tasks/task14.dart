import 'dart:convert';

import '../domain/ip.dart';

void main() {
  String json14 = """
{
  "users": [
    {
      "name": "John Doe",
      "age": 30,
      "ip": "244.111.4.24"
    },
    {
      "name": "Jane Doe",
      "age": 25,
      "ip": "100.44.94.1"
    }
  ]
}
""";

  // Erstelle eine Instanz der Klasse IP basierend auf dem JSON-String json14

  Map<String, dynamic> m14 = jsonDecode(json14);

  IP ip14 = IP(ip: m14['users'][1]['ip']);

  print(ip14);
}
