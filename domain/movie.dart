class Movie {
  final String title;
  final double rating;
  final int year;

  Movie({required this.title, required this.rating, required this.year});

  @override
  String toString() {
    return "$title ($year) - $rating";
  }
}
