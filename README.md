# Recipe App

## Objective

Create an app that allows users to browse, search, and save recipes.

## Key Features

1. **Recipe Browsing**: Browse a variety of recipes.
2. **Recipe Details**: View detailed information about selected recipes, including ingredients and instructions.
3. **Favorites**: Save favorite recipes to a local database for easy access.
4. **Search Functionality**: Search for recipes by name or ingredients.
5. **Filters**: Filter recipes based on dietary preferences or meal type.
6. **API Integration**: Fetch recipe data from a recipe API (e.g., Spoonacular).

## Technologies Used

- **Flutter**: UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.
- **Dart**: Programming language optimized for building mobile, desktop, server, and web applications.
- **SQLite**: Local database to store favorite recipes.
- **Spoonacular API**: API used to fetch recipe data.
- **HTTP**: Package used to make network requests.
- **Provider**: State management library for Flutter.

## Getting Started

### Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install) SDK
- [Android Studio](https://developer.android.com/studio) or [Visual Studio Code](https://code.visualstudio.com/Download)
- Spoonacular API Key (sign up at [Spoonacular](https://spoonacular.com/food-api) to get your API key)

### Installation

1. **Clone the Repository**

   ```sh
   git clone https://github.com/yourusername/recipe_app.git
   cd recipe_app

2. **Install Dependencies**

   ```sh
   flutter pub get

3. **Configure API Key**

   Open lib/recipe_api.dart and replace 'YOUR_SPOONACULAR_API_KEY' with your Spoonacular API key.

4. **Run the App**

   ```sh
   flutter run

 
