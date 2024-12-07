import 'package:flutter/material.dart';
import 'package:food_allergen_detection_and_meal_suggestion/meal_suggestions.dart';

class MainFunctionsPage extends StatelessWidget {
  const MainFunctionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                      )
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

            // Main Body Section
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Input Section
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Input Your Meal Here:',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            TextField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[200],
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                // Implement functionality
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 15,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: const Text(
                                'Know the Allergens!',
                                style: TextStyle(
                                  fontSize: 18,
                                  color:
                                      Colors.white, // Set text color to white
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            const Text(
                              'Your Food Contains the following ingredients:',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),

                      // Allergen Results Section
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Allergens in your Meal:',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              height: 200,
                              width: 500,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Text(
                                'No allergens detected.',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const MealSuggestionsPage(), // Add parentheses to instantiate the class
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 30,
                                  vertical: 15,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: const Text(
                                'Get Meal Suggestion',
                                style: TextStyle(
                                  fontSize: 18,
                                  color:
                                      Colors.white, // Set text color to white
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
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
}
