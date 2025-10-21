import 'package:flutter/material.dart';

// Halaman profil utama (tidak memiliki state)
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      // SafeArea agar tampilan tidak tertutup oleh notch atau status bar
      child: Column(
        children: [
          // ====== BAGIAN HEADER WARNA ORANGE ======
          Container(
            color: Colors.orange, // Warna latar belakang header
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 20,
            ), // Jarak dalam header
            child: Row(
              children: [
                // Foto profil pengguna
                const CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage(
                    'assets/images/profile.png',
                  ), // Gambar profil dari folder assets
                ),
                const SizedBox(width: 12), // Jarak antara foto dan teks
                // Kolom berisi nama dan nomor telepon
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Rata kiri
                  children: const [
                    Text(
                      "Cahya Nerissa", // Nama pengguna
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "085******379", // Nomor telepon disamarkan
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                  ],
                ),
                const Spacer(), // Mendorong ikon ke kanan
                // Tombol notifikasi (bel)
                IconButton(
                  onPressed: () {}, // Aksi saat ditekan (belum diatur)
                  icon: const Icon(
                    Icons.notifications_none,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          // ====== DAFTAR MENU ======
          Expanded(
            // Expanded agar daftar menu mengisi ruang yang tersisa
            child: SingleChildScrollView(
              // Supaya bisa di-scroll
              padding: const EdgeInsets.all(12), // Jarak seluruh isi
              child: Column(
                children: [
                  // Setiap baris menu dibuat dengan fungsi _buildMenuItem()
                  _buildMenuItem(Icons.person_outline, "Profil Saya"),
                  _buildMenuItem(Icons.security_outlined, "Keamanan Akun"),
                  _buildMenuItem(Icons.receipt_long_outlined, "e-Statement"),
                  _buildMenuItem(
                    Icons.credit_card_outlined,
                    "Pengaturan Limit dan Pembayaran",
                  ),
                  _buildMenuItem(
                    Icons.swap_horiz_outlined,
                    "Pengaturan BI-FAST",
                  ),
                  _buildMenuItem(Icons.settings_outlined, "Pengaturan Umum"),
                  _buildMenuItem(Icons.group_add_outlined, "Undang Teman"),
                  _buildMenuItem(Icons.help_outline, "Pusat Bantuan"),
                  _buildMenuItem(
                    Icons.chat_bubble_outline,
                    "Chat dengan SeaBank",
                  ),
                  _buildMenuItem(Icons.location_on_outlined, "Lokasi SeaBank"),
                  _buildMenuItem(Icons.feedback_outlined, "Beri Masukan"),

                  const SizedBox(height: 20),

                  // ====== TOMBOL LOGOUT ======
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white, // Warna latar putih
                      borderRadius: BorderRadius.circular(
                        12,
                      ), // Sudut melengkung
                    ),
                    child: ListTile(
                      title: const Center(
                        child: Text(
                          "Log Out", // Teks tombol logout
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      onTap: () {}, // Aksi logout (belum diatur)
                    ),
                  ),

                  const SizedBox(height: 30), // Jarak bawah
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ====== FUNGSI PEMBANGUN TIAP ITEM MENU ======
  Widget _buildMenuItem(IconData icon, String title) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4), // Jarak antar item
      decoration: BoxDecoration(
        color: Colors.white, // Warna latar tiap item
        borderRadius: BorderRadius.circular(12), // Sudut melengkung
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.black87), // Ikon di kiri
        title: Text(title, style: const TextStyle(fontSize: 15)), // Judul menu
        trailing: const Icon(
          Icons.arrow_forward_ios_rounded, // Panah ke kanan
          size: 16,
          color: Colors.grey,
        ),
        onTap: () {}, // Aksi saat item ditekan (belum diatur)
      ),
    );
  }
}
