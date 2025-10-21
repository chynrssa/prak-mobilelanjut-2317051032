// Import library Flutter utama untuk membuat UI
import 'package:flutter/material.dart';

// Widget stateless untuk menampilkan satu item transaksi
class TransactionItem extends StatelessWidget {
  // ====== Deklarasi variabel yang diperlukan ======
  final String name; // Nama transaksi (misal: “Top Up”, “Transfer”)
  final String time; // Waktu transaksi (misal: “Hari ini, 10:00”)
  final int amount; // Jumlah uang yang terlibat

  // Konstruktor dengan parameter wajib (required)
  const TransactionItem({
    super.key,
    required this.name,
    required this.time,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // Menghilangkan padding default di kiri-kanan
      contentPadding: EdgeInsets.zero,

      // ====== Ikon di bagian kiri list item ======
      leading: const CircleAvatar(
        backgroundColor: Color(0xFFFFF2E6), // Warna latar belakang ikon
        child: Icon(
          Icons.arrow_downward, // Ikon panah ke bawah (contoh: uang masuk)
          color: Colors.orange,
        ),
      ),

      // ====== Teks judul utama (nama transaksi) ======
      title: Text(
        name, // diambil dari parameter konstruktor
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
      ),

      // ====== Subtitle di bawah judul (waktu transaksi) ======
      subtitle: Text(
        time, // diambil dari parameter konstruktor
        style: const TextStyle(color: Colors.grey, fontSize: 12),
      ),

      // ====== Bagian kanan: nominal transaksi ======
      trailing: Text(
        "+Rp ${amount.toString()}", // format sederhana dengan tanda "+"
        style: const TextStyle(
          color: Colors.green, // warna hijau (menandakan uang masuk)
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
