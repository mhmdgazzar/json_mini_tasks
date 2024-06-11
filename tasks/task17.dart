import 'dart:convert';

import '../domain/dog.dart';

void main() {
  String json17 = """
{
  "rescueDogs": [
    {
      "name": "Buddy",
      "breed": "Golden Retriever",
      "age": 3,
      "bodyStats": {
        "color": "Golden",
        "size": "Large",
        "weight": 30
      }
    },
    {
      "name": "Luna",
      "breed": "Labrador Retriever",
      "age": 2,
      "bodyStats": {
        "color": "Black",
        "size": "Medium",
        "weight": 25
      }
    }
  ]
}
""";

  // Erstelle eine Instanz der Klasse Dog basierend auf dem JSON-String json17

  Map<String, dynamic> m17 = jsonDecode(json17);

  Dog dog17 = Dog(
      name: m17['rescueDogs'][0]['name'],
      breed: m17['rescueDogs'][0]['breed'],
      age: m17['rescueDogs'][0]['age']);

  print(dog17);
}
