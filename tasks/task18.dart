import 'dart:convert';

import '../domain/dog.dart';

void main() {
  String json18 = """
{
  "shelter": "Animal Shelter",
  "address": {
    "street": "1234 Elm Street",
    "city": "Springfield",
    "state": "IL",
    "zip": 62701
  },
  "animals": [
    {
      "name": "Whiskers",
      "species": "Cat",
      "breed": "Siamese",
      "age": 2
    },
    {
      "name": "Rex",
      "species": "Dog",
      "breed": "Golden Retriever",
      "age": 3
    }
  ]
}
""";

  // Erstelle eine Instanz der Klasse Dog basierend auf dem JSON-String json18

  Map<String, dynamic> m18 = jsonDecode(json18);

  Dog dog18 = Dog(
      name: m18['animals'][1]['name'],
      breed: m18['animals'][1]['breed'],
      age: m18['animals'][1]['age']);

  print(dog18);
}
