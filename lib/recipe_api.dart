import 'package:http/http.dart' as http;
import 'dart:convert';
import 'models/recipe.dart';

class RecipeApi {
  static const _apiKey = 'a70bb53c9e274bcebd832463b11528b7';
  static const _baseUrl = 'https://api.spoonacular.com/recipes';

  static Future<List<Recipe>> fetchRecipes(String query) async {
    final response = await http.get(Uri.parse('$_baseUrl/complexSearch?query=$query&apiKey=$_apiKey'));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      List<Recipe> recipes = (data['results'] as List).map((i) => Recipe.fromJson(i)).toList();
      return recipes;
    } else {
      throw Exception('Failed to load recipes');
    }
  }

  static Future<Recipe> fetchRecipeDetails(int id) async {
    final response = await http.get(Uri.parse('$_baseUrl/$id/information?apiKey=$_apiKey'));

    if (response.statusCode == 200) {
      return Recipe.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load recipe details');
    }
  }
}
