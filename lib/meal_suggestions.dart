import 'package:flutter/material.dart';

class MealSuggestionsPage extends StatelessWidget {
  const MealSuggestionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Header Section
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              color: Colors.grey[900],
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.call, color: Colors.white),
                          SizedBox(width: 5),
                          Text(
                            '(414) 857 - 0107',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 20),
                          Icon(Icons.email, color: Colors.white),
                          SizedBox(width: 5),
                          Text(
                            'yummy@bistrobliss.com',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.facebook, color: Colors.white),
                          SizedBox(width: 10),
                          Icon(Icons.one_x_mobiledata, color: Colors.white),
                          SizedBox(width: 10),
                          Icon(Icons.camera, color: Colors.white),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Food Allergy Detection and Meal Suggestion',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),

            // Title Section
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                children: [
                  const Text(
                    'Other Meal Suggestions',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'We consider all the drivers of change and give you the components\n'
                    'you need to change to create a truly happens.',
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),

            // Meal Suggestions Grid
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                physics:
                    NeverScrollableScrollPhysics(), // Prevent internal scrolling
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, // Three items per row
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.75,
                ),
                itemCount: 9, // Replace with the actual count of meals
                itemBuilder: (context, index) {
                  return buildMealCard(index);
                },
              ),
            ),

            // Footer Section
            Container(
              color: Colors.grey[900],
              padding: EdgeInsets.all(20),
              child: const Column(
                children: [
                  Text(
                    'Food Allergy Detection and Meal Suggestion',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'In the new era of technology we look to the future with certainty and pride.',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.facebook, color: Colors.white),
                      SizedBox(width: 10),
                      Icon(Icons.one_x_mobiledata, color: Colors.white),
                      SizedBox(width: 10),
                      Icon(Icons.camera, color: Colors.white),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Copyright © 2023 Hashtag Developer. All Rights Reserved.',
                    style: TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Build a single meal card
  Widget buildMealCard(int index) {
    // Sample data (replace with dynamic data source if needed)
    final meals = [
      {
        'name': 'Fried Eggs',
        'description':
            'Made with eggs, lettuce, salt, oil and other ingredients.',
        'image': 'assets/food.jpg', // Replace with your image paths
      },
      {
        'name': 'Hawaiian Pizza',
        'description':
            'Made with eggs, lettuce, salt, oil and other ingredients.',
        'image': 'assets/food.jpg',
      },
      {
        'name': 'Martinez Cocktail',
        'description':
            'Made with eggs, lettuce, salt, oil and other ingredients.',
        'image': 'assets/food.jpg',
      },
      {
        'name': 'Butterscotch Cake',
        'description':
            'Made with eggs, lettuce, salt, oil and other ingredients.',
        'image': 'assets/food.jpg',
      },
      {
        'name': 'Mint Lemonade',
        'description':
            'Made with eggs, lettuce, salt, oil and other ingredients.',
        'image': 'assets/food.jpg',
      },
      {
        'name': 'Chocolate Icecream',
        'description':
            'Made with eggs, lettuce, salt, oil and other ingredients.',
        'image': 'assets/food.jpg',
      },
      {
        'name': 'Cheese Burger',
        'description':
            'Made with eggs, lettuce, salt, oil and other ingredients.',
        'image': 'assets/food.jpg',
      },
      {
        'name': 'Classic Waffles',
        'description':
            'Made with eggs, lettuce, salt, oil and other ingredients.',
        'image': 'assets/food.jpg',
      },
    ];

    final meal = meals[index % meals.length]; // Cycle through the sample data

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
              child: Image.asset(
                meal['image']!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  meal['name']!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  meal['description']!,
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
