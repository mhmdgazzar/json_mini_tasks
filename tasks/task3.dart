import 'dart:convert';

import '../domain/user.dart';

void main() {
  String json3 = """
{
  "person": {
    "name": {
      "first": "Katherine",
      "last": "Gill"
    },
    "city": "Lloyd",
    "zip": "08075"
  },
  "phone": "1-202-555-0191",
  "email": "k.gill@hotmail.com"
}
""";

  // Erstelle eine Instanz der Klasse User basierend auf dem JSON-String json3
  Map<String, dynamic> m3 = jsonDecode(json3);
  User user3 = User(
      gender: 'unknown',
      fullName: (m3['person']['name']['first'] + m3['person']['name']['last']),
      city: m3['person']['city']);

  print('Gender: ${user3.gender}');
  print('Fullname: ${user3.fullName}');
  print('City: ${user3.city}');
}
