class Dog {
  String name;
  String breed;
  int age;

  Dog({required this.name, required this.breed, required this.age});

  @override
  String toString() {
    return "$name is a $breed and is $age years old";
  }
}
