import 'dart:convert';

import '../domain/movie.dart';

void main() {
  String json11 = """
{
  "movies": [
    {
      "title": "The Shawshank Redemption",
      "details": {
        "year": 1994,
        "duration": "2h 22min",
        "genre": "Drama",
        "rating": 9.3
      }
    },
    {
      "title": "The Godfather",
      "details": {
        "year": 1972,
        "duration": "2h 55min",
        "genre": "Crime, Drama",
        "rating": 9.2
      }
    },
    {
      "title": "The Dark Knight",
      "details": {
        "year": 2008,
        "duration": "2h 32min",
        "genre": "Action, Crime, Drama",
        "rating": 9.0
      }
    }
  ]
}
""";

  // Erstelle eine Instanz der Klasse Movie basierend auf dem JSON-String json11

  Map<String, dynamic> m11 = jsonDecode(json11);

  Movie mov11 = Movie(
      title: m11['movies'][2]['title'],
      rating: m11['movies'][2]['details']['rating'],
      year: m11['movies'][2]['details']['year']);

  print(mov11);
}
