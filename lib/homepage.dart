import 'package:flutter/material.dart';
import 'package:food_allergen_detection_and_meal_suggestion/main_functions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
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
            Stack(
              children: [
                Image.asset(
                  'assets/bg.png', // Replace with your image asset
                  width: double.infinity,
                  height: 400,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: 400,
                  color: Colors.black.withOpacity(0.5),
                ),
                Positioned(
                  top: 100,
                  left: 20,
                  right: 20,
                  child: Column(
                    children: [
                      const Text(
                        'Enjoy your food\nwithout worries',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 10),
                      const Text(
                        'Know if the food you\'re eating can trigger your allergy.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white70,
                        ),
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: () {
                          // Navigate to MainFunctionsPage
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MainFunctionsPage(),
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
                          'Discover Now!',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white, // Set text color to white
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Steps Section
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
              child: Column(
                children: [
                  const Text(
                    'Steps on how to use the Website',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildStepCard('Step 1',
                          'Click Discover Now! After that you will be redirected to the page where you need to input your meal.'),
                      buildStepCard('Step 2',
                          'Input your meal in the input field. The system will determine if there are allergens.'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      buildStepCard('Step 3',
                          'If you want alternative meals, click the "Get Meal Suggestions".'),
                      buildStepCard('Step 4',
                          'The system will show options to avoid allergens while enjoying the same food.'),
                    ],
                  ),
                ],
              ),
            ),

            // Footer Section
            Container(
              color: Colors.grey[900],
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  const Text(
                    'Food Allergy Detection and Meal Suggestion',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  const Text(
                    'In the new era of technology we look to the future with certainty and pride.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.facebook),
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.one_x_mobiledata),
                        color: Colors.white,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.camera),
                        color: Colors.white,
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  const Text(
                    'Copyright © 2023 Hashtag Developer. All Rights Reserved.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildStepCard(String stepTitle, String stepDescription) {
    return Expanded(
      child: Card(
        margin: EdgeInsets.all(8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Icon(Icons.check_circle, size: 50, color: Colors.green),
              SizedBox(height: 10),
              Text(
                stepTitle,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                stepDescription,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
