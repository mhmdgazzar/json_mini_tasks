import 'dart:convert';

import '../domain/news.dart';

void main() {
  String json7 = """
{
  "news": [
    {
      "title": "Germany's Scholz says Russia must pay high price if it invades Ukraine",
      "source": "Reuters",
      "time": "2022-02-20T14:00:00Z"
    },
    {
      "title": "Ukraine crisis: US warns Russia of consequences if it invades",
      "source": "BBC",
      "time": "2022-02-20T14:00:00Z"
    },
    {
      "title": "UAPB's 21st annual Black History Month program to feature 'The Black Family: Representation, Identity and Diversity'",
      "source": "Pine Bluff Commercial",
      "time": "2022-02-20T14:00:00Z"
    }
  ]
}
""";

  // Erstelle eine Instanz der Klasse News basierend auf dem JSON-String json7

  Map<String, dynamic> m7 = jsonDecode(json7);

  News n7 =
      News(title: m7['news'][0]['title'], source: m7['news'][0]['source']);

  print(n7);
}
