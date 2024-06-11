import 'dart:convert';

import '../domain/ip.dart';

void main() {
  String json13 = """
{
  "ip": "127.0.0.1",
  "port": 8080,
  "protocol": "http"
}
""";

  // Erstelle eine Instanz der Klasse IP basierend auf dem JSON-String json13

  Map<String, dynamic> m13 = jsonDecode(json13);

  IP ip13 = IP(ip: m13['ip']);

  print(ip13);
}
