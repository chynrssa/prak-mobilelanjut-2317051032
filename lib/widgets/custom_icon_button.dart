import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final String imagePath;
  const CustomIconButton({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final iconSize = screenWidth * 0.15;

    return Image.asset(
      imagePath,
      width: iconSize,
      height: iconSize,
      fit: BoxFit.contain,
    );
  }
}
