//class that describes an Object
class Food {
  final String name;
  final String image;
  final String? description; //nullable

  //static means that this property belongs to the class
  //NOT to be created with each object

  static final List<Food> foods = [
    Food(
        name: "Pizza",
        image: "assets/pizza.jpg",
        description: "a dish of Italian origin"),
    Food(name: "Burger", image: "assets/burger.jpg"),
    Food(name: "Pasta", image: "assets/pasta.jpg"),
    Food(name: "Sushi", image: "assets/suchi.jpg"),
    Food(name: "Biryani", image: "assets/biryani.jpg"),
  ];
  Food({
    required this.name,
    required this.image,
    this.description,
  });
}
