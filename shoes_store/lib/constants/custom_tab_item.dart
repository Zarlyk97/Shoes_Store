import 'package:flutter/material.dart';

class CustomTabItem extends StatelessWidget {
  final String imagePath;
  final String text;
  final bool isSelected;

  const CustomTabItem({
    required this.imagePath,
    required this.text,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          width: 24,
          height: 24,
          color: isSelected ? Colors.white : Colors.grey, // Customize icon color based on selection
        ),
        SizedBox(height: 4),
        Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.grey, // Customize text color based on selection
          ),
        ),
      ],
    );
  }
}
