import 'dart:convert';

import '../domain/movie.dart';

void main() {
  String json12 = """
{
  "ratings": {
      "rating": "9",
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
}
""";

  // Erstelle eine Instanz der Klasse Movie basierend auf dem JSON-String json12

  Map<String, dynamic> m12 = jsonDecode(json12);

  Movie mov12 = Movie(
      title: m12['ratings']['movies'][1]['title'],
      rating: m12['ratings']['movies'][1]['rating'],
      year: m12['ratings']['movies'][1]['year']);

  print(mov12);
}
