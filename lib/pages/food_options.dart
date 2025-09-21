import 'package:flutter/material.dart';

// First and Second Classes:
class FoodOptions extends StatelessWidget {
  const FoodOptions({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('تحب تاكل ايه؟')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2, // 2 columns
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          children: List.generate(10, (index) {
            return ElevatedButton(
              onPressed: () {
                // Add your button action here
              },
              child: Text('Button ${index + 1}'),
            );
          }),
        ),
      ),
    );
  }
}
