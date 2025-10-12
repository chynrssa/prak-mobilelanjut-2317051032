import 'package:flutter/material.dart';
import 'dart:async';

class WeatherWidget extends StatefulWidget {
  const WeatherWidget({super.key});

  @override
  State<WeatherWidget> createState() => _WeatherWidgetState();
}

class _WeatherWidgetState extends State<WeatherWidget> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(minutes: 1), (timer) {
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  Widget _getWeatherIcon() {
    final now = DateTime.now();
    final hour = now.hour;

    bool isDaytime = hour >= 6 && hour < 18;
    if (isDaytime) {
      return Stack(
        alignment: Alignment.center,
        children: [
          for (int i = 0; i < 10; i++)
            Transform.rotate(
              angle: i * 3.14159 * 2 / 10,
              child: Transform.translate(
                offset: const Offset(22, 0),
                child: Container(
                  width: 5,
                  height: 5,
                  decoration: const BoxDecoration(
                    color: Colors.yellow,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          const Icon(
            Icons.wb_sunny,
            color: Color.fromARGB(255, 245, 237, 4),
            size: 36,
          ),
        ],
      );
    } else {
      return Image.asset('assets/images/moon.png', width: 90, height: 90);
    }
  }

  String _getCurrentTimeString() {
    final now = DateTime.now();
    final day = now.day.toString().padLeft(2, '0');
    final month = now.month.toString().padLeft(2, '0');
    final hour = now.hour.toString().padLeft(2, '0');
    final minute = now.minute.toString().padLeft(2, '0');

    return '$day/$month $hour.$minute ↺';
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _getWeatherIcon(),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '31°',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                shadows: [
                  Shadow(
                    blurRadius: 2.0,
                    color: Colors.black54,
                    offset: Offset(1, 1),
                  ),
                ],
              ),
            ),
            const Text(
              'Lampung Selatan',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                shadows: [
                  Shadow(
                    blurRadius: 2.0,
                    color: Colors.black54,
                    offset: Offset(1, 1),
                  ),
                ],
              ),
            ),
            Text(
              _getCurrentTimeString(),
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white70,
                shadows: [
                  Shadow(
                    blurRadius: 2.0,
                    color: Colors.black54,
                    offset: Offset(1, 1),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
