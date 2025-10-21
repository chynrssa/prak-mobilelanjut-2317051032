import 'package:flutter/material.dart';
import 'widgets/bottom_nav.dart';

// Fungsi utama (entry point) aplikasi Flutter
void main() {
  // Menjalankan widget utama SeaBankApp
  runApp(const SeaBankApp());
}

// Widget utama aplikasi yang bersifat stateless (tidak menyimpan state)
class SeaBankApp extends StatelessWidget {
  const SeaBankApp({super.key}); // Konstruktor dengan key opsional

  @override
  Widget build(BuildContext context) {
    // MaterialApp digunakan sebagai root dari seluruh aplikasi Flutter
    return MaterialApp(
      // Menghilangkan banner "Debug" di pojok kanan atas saat mode debug
      debugShowCheckedModeBanner: false,

      // Judul aplikasi (terlihat di task manager atau tab browser)
      title: 'SeaBank Clone',

      // Tema dasar untuk seluruh aplikasi
      theme: ThemeData(
        primaryColor: Colors.orange,
        scaffoldBackgroundColor: Colors.white, // Warna latar belakang standar
        fontFamily: 'Poppins', // Mengatur font global
      ),

      // Menentukan halaman awal (home screen) aplikasi saat pertama dijalankan
      home: const BottomNav(), // Menampilkan halaman dengan navigasi bawah
    );
  }
}
