import 'dart:convert';

import '../domain/news.dart';

void main() {
  String json9 = """
[
  {
    "title": "The best way to learn Flutter",
    "source": "Flutter Dev",
    "time": "2022-02-20T14:00:00Z"
  },
  {
    "title": "Dart is the best programming language",
    "source": "Dart Dev",
    "time": "2022-02-20T14:00:00Z"
  },
  {
    "title": "The best way to learn Dart",
    "source": "Dart Dev",
    "time": "2022-02-20T14:00:00Z"
  }
]
""";

  // Erstelle eine Instanz der Klasse News basierend auf dem JSON-String json9

  List<dynamic> m9 = jsonDecode(json9);

  News n9 = News(title: m9[0]['title'], source: m9[0]['source']);

  print(n9);
}
