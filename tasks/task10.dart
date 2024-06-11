import 'dart:convert';

import '../domain/movie.dart';

void main() {
  String json10 = """
{
  "movies": [
    {
      "title": "The Shawshank Redemption",
      "year": 1994,
      "duration": "2h 22min",
      "genre": "Drama",
      "rating": 9.3
    },
    {
      "title": "The Godfather",
      "year": 1972,
      "duration": "2h 55min",
      "genre": "Crime, Drama",
      "rating": 9.2
    },
    {
      "title": "The Dark Knight",
      "year": 2008,
      "duration": "2h 32min",
      "genre": "Action, Crime, Drama",
      "rating": 9.0
    }
  ]
}
""";

  // Erstelle eine Instanz der Klasse Movie basierend auf dem JSON-String json10

  Map<String, dynamic> m10 = jsonDecode(json10);

  Movie mov10 = Movie(
      title: m10['movies'][1]['title'],
      rating: m10['movies'][1]['rating'],
      year: m10['movies'][1]['year']);

  print(mov10);
}
