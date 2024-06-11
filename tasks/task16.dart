import 'dart:convert';

import '../domain/dog.dart';

void main() {
  String json16 = """
{
  "name": "Buddy",
  "breed": "Golden Retriever",
  "age": 3,
  "color": "Golden",
  "size": "Large",
  "weight": 30
}
""";

  // Erstelle eine Instanz der Klasse Dog basierend auf dem JSON-String json16

  Map<String, dynamic> m16 = jsonDecode(json16);

  Dog dog16 = Dog(name: m16['name'], breed: m16['breed'], age: m16['age']);

  print(dog16);
}
