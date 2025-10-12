import 'package:flutter/material.dart';

class GoogleSearchBar extends StatelessWidget {
  const GoogleSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 57, 55, 55).withOpacity(0.85),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/google.png',
            height: 28,
            width: 28,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 10),

          const Expanded(child: SizedBox(height: 30)),
          Icon(Icons.mic, color: Colors.white.withOpacity(0.8)),
          const SizedBox(width: 10),
          Image.asset(
            'assets/images/camera_icon.png',
            height: 28,
            width: 28,
            fit: BoxFit.contain,
            color: Colors.white.withOpacity(0.8),
          ),
        ],
      ),
    );
  }
}
