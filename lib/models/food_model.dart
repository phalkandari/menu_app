//class that describes an Object
class Food {
  final String name;
  final String image;
  final String? description; //nullable

  Food({
    required this.name,
    required this.image,
    this.description,
  });
}
