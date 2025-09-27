import 'package:flutter/material.dart';

// First and Second Classes:
class FoodOptions extends StatelessWidget {
  const FoodOptions({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> foodOptions = [
      'Surprise me!',
      'Burger',
      'Steak',
      'Grill',
      'Fried Chicken',
      'Pizza',
      'Pasta',
      'Sushi',
      'Dessert',
      'Salat',
    ];
    final List<String> foodImages = [
      'assets/images/surprise_me.png',
      'assets/images/burger.png',
      'assets/images/steak.png',
      'assets/images/kabab.png',
      'assets/images/fried_chicken.png',
      'assets/images/pizza.png',
      'assets/images/pasta.png',
      'assets/images/sushi.png',
      'assets/images/dessert.png',
      'assets/images/salad.png',
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('تحب تاكل ايه؟')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2, // 2 columns
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          children: List.generate(foodOptions.length, (index) {
            return GestureDetector(
              onTap: () {
                // Add your button action here
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('You chose ${foodOptions[index]}')),
                );
              },
              child: index < foodImages.length
                  ? Image.asset(
                      foodImages[index],
                      width: 64,
                      height: 64,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return Text(foodOptions[index]);
                      },
                    )
                  : Text(foodOptions[index]),
            );
          }),
        ),
      ),
    );
  }
}
