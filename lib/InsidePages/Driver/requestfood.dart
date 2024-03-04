import 'package:flutter/material.dart';

enum MealType { Breakfast, Lunch, Dinner }

class RequestFood extends StatefulWidget {
  const RequestFood({Key? key});

  @override
  _RequestFoodState createState() => _RequestFoodState();
}

class _RequestFoodState extends State<RequestFood> {
  MealType? _selectedMeal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        backgroundColor: Colors.purple[400],
        title: const Text(
          "Food Services",
          style: TextStyle(color: Color.fromARGB(255, 240, 233, 241)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            mealOption(MealType.Breakfast, "Breakfast", Icons.wb_sunny),
            const SizedBox(height: 20),
            mealOption(MealType.Lunch, "Lunch", Icons.free_breakfast),
            const SizedBox(height: 20),
            mealOption(MealType.Dinner, "Dinner", Icons.nights_stay),
          ],
        ),
      ),
    );
  }

  Widget mealOption(MealType mealType, String label, IconData icon) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedMeal = mealType;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: _selectedMeal == mealType
              ? Colors.purple[400]
              : Colors.purple[200],
          boxShadow: _selectedMeal == mealType
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ]
              : [],
        ),
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              icon,
              size: 40,
              color: _selectedMeal == mealType ? Colors.white : Colors.black87,
            ),
            Text(
              label,
              style: TextStyle(
                fontSize: 24,
                color:
                    _selectedMeal == mealType ? Colors.white : Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
