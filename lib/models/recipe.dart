class Recipe {
  final int id;
  final String title;
  final String ingredients;
  final String instructions;
  final String imageUrl;
  final bool isFavorite;

  Recipe({
    required this.id,
    required this.title,
    required this.ingredients,
    required this.instructions,
    required this.imageUrl,
    required this.isFavorite,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      id: json['id'],
      title: json['title'],
      ingredients: json['ingredients'] ?? '',
      instructions: json['instructions'] ?? '',
      imageUrl: json['image'] ?? '',
      isFavorite: false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'ingredients': ingredients,
      'instructions': instructions,
      'image_url': imageUrl,
      'is_favorite': isFavorite ? 1 : 0,
    };
  }

  factory Recipe.fromMap(Map<String, dynamic> map) {
    return Recipe(
      id: map['id'],
      title: map['title'],
      ingredients: map['ingredients'],
      instructions: map['instructions'],
      imageUrl: map['image_url'],
      isFavorite: map['is_favorite'] == 1,
    );
  }
}
