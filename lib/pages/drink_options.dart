import 'package:flutter/material.dart';

class DrinkOptions extends StatelessWidget {
  const DrinkOptions({super.key});
  @override
  Widget build(BuildContext context) {
    //List of button labels:
    final List<String> drinkNames = [
      'Surprise me!',
      'Water',
      'Tea',
      'Juice',
      'Coffee',
      'Milk',
      'Smoothie',
      'Lemonade',
      'Cola',
      'Energy Drink',
    ];
    final List<String> drinkImages = [
      'assets/images/surprise_me.png',
      'assets/images/water.png',
      'assets/images/tea.png',
      'assets/images/juice.png',
      'assets/images/coffee.png',
      'assets/images/milk.png',
      'assets/images/smoothie.png',
      'assets/images/lemonade.png',
      'assets/images/cola.png',
      'assets/images/energy_drink.png',
    ];
    return Scaffold(
      appBar: AppBar(title: const Text('تحب تشرب ايه؟')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2, // 2 columns
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          children: List.generate(drinkNames.length, (index) {
            return GestureDetector(
              onTap: () {
                // Add your button action here
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('You chose ${drinkNames[index]}')),
                );
              },
              child: index < drinkImages.length
                  ? Image.asset(
                      drinkImages[index],
                      width: 64,
                      height: 63,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return Text(drinkNames[index]);
                      },
                    )
                  : Text(drinkNames[index]),
            );
          }),
        ),
      ),
    );
  }
}
