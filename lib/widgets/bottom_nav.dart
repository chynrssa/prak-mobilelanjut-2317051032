// Import library flutter untuk widget dasar
import 'package:flutter/material.dart';

// Import halaman-halaman lain yang digunakan dalam navigasi bawah
import '../pages/home_page.dart';
import '../pages/transfer_page.dart';
import '../pages/deposito_page.dart';
import '../pages/profile_page.dart';
import '../pages/qris_page.dart';

// Widget utama untuk Bottom Navigation Bar
class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

// State dari BottomNav yang mengatur logika pergantian halaman
class _BottomNavState extends State<BottomNav> {
  // Variabel untuk menyimpan index tab yang sedang dipilih
  int _selectedIndex = 0;

  // Daftar halaman yang akan ditampilkan sesuai urutan di bottom nav
  final List<Widget> _pages = const [
    HomePage(), // Halaman Beranda
    TransferPage(), // Halaman Transfer
    QrisPage(), // Halaman QRIS (tengah)
    DepositoPage(), // Halaman Deposito
    ProfilePage(), // Halaman Profil
  ];

  // Fungsi untuk mengganti halaman saat item bottom nav diklik
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; // Ganti halaman sesuai index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Warna latar belakang keseluruhan
      backgroundColor: Colors.grey[100],

      // Menampilkan halaman sesuai item yang dipilih
      body: _pages[_selectedIndex],

      // ===== BOTTOM NAVIGATION BAR =====
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // agar semua ikon tampil
        backgroundColor: Colors.white, // warna latar belakang bar
        currentIndex: _selectedIndex, // item aktif saat ini
        selectedItemColor: Colors.orange, // warna item yang dipilih
        unselectedItemColor: Colors.grey, // warna item yang tidak dipilih
        onTap: _onItemTapped, // panggil fungsi ketika ditekan
        // ===== Daftar item navigasi =====
        items: [
          // === Menu Beranda ===
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined), // ikon default
            activeIcon: Icon(Icons.home, color: Colors.orange), // ikon aktif
            label: "Beranda", // teks label
          ),

          // === Menu Bayar/Transfer ===
          const BottomNavigationBarItem(
            icon: Icon(Icons.swap_horiz_outlined),
            activeIcon: Icon(Icons.swap_horiz, color: Colors.orange),
            label: "Bayar/Transfer",
          ),

          // === Tombol QRIS Tengah ===
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.all(6), // jarak di dalam lingkaran
              decoration: BoxDecoration(
                color: Colors.orange, // warna latar tombol tengah
                shape: BoxShape.circle, // bentuk lingkaran
              ),
              // Ikon QR dengan warna putih dan ukuran besar
              child: const Icon(Icons.qr_code_2, color: Colors.white, size: 28),
            ),
            label: "", // tidak ada label di bawah tombol QRIS
          ),

          // === Menu Deposito ===
          const BottomNavigationBarItem(
            icon: Icon(Icons.savings_outlined),
            activeIcon: Icon(Icons.savings, color: Colors.orange),
            label: "Deposito",
          ),

          // === Menu Profil ===
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person, color: Colors.orange),
            label: "Saya",
          ),
        ],
      ),
    );
  }
}
