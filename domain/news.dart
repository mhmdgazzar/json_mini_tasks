class News {
  final String title;
  final String source;

  News({
    required this.title,
    required this.source,
  });

  @override
  String toString() {
    return "$title from $source";
  }
}
