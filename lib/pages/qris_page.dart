import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart'; // Library untuk menampilkan QR Code

// Widget halaman QRIS, bersifat Stateless (tidak memiliki state yang berubah)
class QrisPage extends StatelessWidget {
  const QrisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ====== WARNA LATAR HALAMAN ======
      backgroundColor: Colors.grey[100], // Warna abu-abu muda untuk background
      // ====== APPBAR (HEADER ATAS) ======
      appBar: AppBar(
        title: const Text("QRIS"), // Judul di AppBar
        backgroundColor: Colors.orange, // Warna latar AppBar
        centerTitle: true, // Posisikan judul di tengah
        elevation: 0, // Hilangkan bayangan di bawah AppBar
      ),

      // ====== ISI HALAMAN ======
      body: Center(
        // Semua konten diatur agar berada di tengah layar
        child: Padding(
          padding: const EdgeInsets.all(20), // Jarak sisi luar konten
          child: Column(
            mainAxisSize: MainAxisSize
                .min, // Tinggi menyesuaikan isi, bukan seluruh layar
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // ====== TEKS JUDUL UTAMA ======
              const Text(
                "Kirim atau Terima dengan QRIS", // Judul deskriptif halaman
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18, // Ukuran teks
                  color: Colors.black87, // Warna teks abu gelap
                ),
              ),

              const SizedBox(height: 24), // Spasi antar elemen
              // ====== KOTAK BERISI QR CODE ======
              Container(
                padding: const EdgeInsets.all(10), // Jarak dalam kotak QR
                decoration: BoxDecoration(
                  color: Colors.white, // Warna latar kotak putih
                  borderRadius: BorderRadius.circular(16), // Sudut melengkung
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12, // Warna bayangan lembut
                      blurRadius: 8, // Tingkat blur bayangan
                      offset: const Offset(
                        0,
                        3,
                      ), // Posisi bayangan ke bawah sedikit
                    ),
                  ],
                ),

                // Widget QR code dari package qr_flutter
                child: QrImageView(
                  data:
                      "901737473829 - Cahya Nerissa", // Data yang diubah menjadi QR
                  size: 200, // Ukuran QR code
                  backgroundColor: Colors.white, // Latar belakang QR code
                ),
              ),

              const SizedBox(height: 20), // Spasi antara QR dan teks nomor
              // ====== TEKS NOMOR QRIS ======
              const Text(
                "9017 3747 3829", // Nomor QRIS yang ditampilkan
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 40), // Spasi besar sebelum tombol
              // ====== TOMBOL UNTUK SCAN QR ======
              ElevatedButton.icon(
                onPressed: () {}, // Aksi tombol (belum diatur)
                icon: const Icon(Icons.qr_code_scanner), // Ikon di kiri tombol
                label: const Text("Scan QR untuk Bayar"), // Teks tombol
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 14,
                  ), // Ukuran padding dalam tombol
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      12,
                    ), // Sudut melengkung tombol
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
