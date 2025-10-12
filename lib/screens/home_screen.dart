import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/google_search_bar.dart';
import '../widgets/weather_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static Widget _buildNavigationBar() {
    return Container(
      height: 40,
      width: double.infinity,
      color: Colors.transparent,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.menu, color: Colors.white, size: 28),
          Icon(Icons.circle_outlined, color: Colors.white, size: 28),
          Icon(Icons.keyboard_arrow_left, color: Colors.white, size: 32),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/background.jpg',
              fit: BoxFit.cover,
            ),
          ),

          SafeArea(
            bottom: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: WeatherWidget(),
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: GoogleSearchBar(),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      CustomIconButton(imagePath: 'assets/images/telepon.png'),
                      CustomIconButton(imagePath: 'assets/images/pesan.png'),
                      CustomIconButton(imagePath: 'assets/images/notes.png'),
                      CustomIconButton(imagePath: 'assets/images/kamera.png'),
                      CustomIconButton(imagePath: 'assets/images/galeri.png'),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: HomeScreen._buildNavigationBar(),
          ),
        ],
      ),
    );
  }
}
