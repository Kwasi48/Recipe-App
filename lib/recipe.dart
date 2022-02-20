// ignore_for_file: non_constant_identifier_names

class Recipe {
  String label;
  String imageUrl;

  int servings;
  List<Ingredient> ingredients;

  Recipe(
    this.label,
    this.imageUrl,
    this.servings,
    this.ingredients,
  );
  // ignore: todo
  static List<Recipe> samples = [
    Recipe(
      'french fries',
      'assets/French-fries.jpg',
      4,
      [
        Ingredient(
          1.0,
          'box',
          'Spaghetti',
        ),
        Ingredient(
          4.0,
          ' ',
          'Frozen Meatballs',
        ),
        Ingredient(
          0.5,
          'jar',
          'sauce',
        ),
      ],
    ),
    Recipe(
      'Humberger',
      'assets/humberger.jpg',
      2,
      [
        Ingredient(
          4,
          'oz',
          'nachos',
        ),
        Ingredient(
          3,
          'oz',
          'taco meat',
        ),
        Ingredient(
          0.5,
          'cup',
          'cheese',
        ),
        Ingredient(
          0.25,
          'cup',
          'chopped tomatoes',
        ),
      ],
    ),
    Recipe(
      'Spaghetti',
      'assets/spaghetti.jpeg',
      4,
      [
        Ingredient(
          1,
          'item',
          'pizza',
        ),
        Ingredient(
          1,
          'cup',
          'pineapple',
        ),
        Ingredient(
          8,
          'oz',
          'ham',
        ),
      ],
    ),
  ];
}
// ignore: todo
//TODO: Add List<Recipe> here

// ignore: todo
//TODO: Add ingredients() here
class Ingredient {
  double quantity;
  String measure;
  String name;

  Ingredient(
    this.quantity,
    this.measure,
    this.name,
  );
}
