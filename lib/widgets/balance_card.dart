import 'package:flutter/material.dart';

// Widget stateless bernama BalanceCard, digunakan untuk menampilkan kartu saldo
class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Margin luar kartu dari tepi layar
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      // Padding di dalam kartu
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFFEE6B00), // Warna oranye khas SeaBank
        borderRadius: BorderRadius.circular(12), // Sudut kartu membulat
        boxShadow: [
          // Efek bayangan lembut agar tampak mengambang
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      // Kolom utama berisi seluruh isi kartu
      child: Column(
        children: [
          // ===== BARIS ATAS: Total Saldo + tombol Riwayat =====
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Bagian kiri berisi teks "Total Saldo" dan ikon mata
              Expanded(
                child: Row(
                  children: const [
                    Text(
                      "Total Saldo",
                      style: TextStyle(color: Colors.white70, fontSize: 14),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.remove_red_eye_outlined, // Ikon lihat/hidden saldo
                      color: Colors.white70,
                      size: 18,
                    ),
                  ],
                ),
              ),
              // Tombol kecil di kanan bertuliskan "Riwayat"
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(
                    0.18,
                  ), // Warna putih transparan
                  borderRadius: BorderRadius.circular(20), // Sudut melengkung
                ),
                child: const Text(
                  "Riwayat",
                  style: TextStyle(
                    color: Colors.white, // Warna teks putih
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          // ===== TAMPILAN JUMLAH TOTAL SALDO =====
          const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Rp 11.638.042", // Nominal saldo
              style: TextStyle(
                color: Colors.white,
                fontSize: 28, // Ukuran besar
                fontWeight: FontWeight.bold,
                height: 1.05, // Spasi antar baris kecil
              ),
            ),
          ),

          const SizedBox(height: 12),
          // Garis pembatas tipis antara total saldo dan detail tabungan/deposito
          Container(height: 1, color: Colors.white24),
          const SizedBox(height: 12),

          // ===== BAGIAN BAWAH: TABUNGAN & DEPOSITO =====
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // === KOLOM TABUNGAN ===
              Expanded(
                flex: 6, // Lebar kolom lebih besar dari deposito
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Baris judul Tabungan + panah kanan
                    Row(
                      children: const [
                        Text(
                          "Tabungan",
                          style: TextStyle(color: Colors.white70, fontSize: 13),
                        ),
                        SizedBox(width: 6),
                        Icon(
                          Icons.chevron_right, // Ikon panah kanan kecil
                          color: Colors.white70,
                          size: 18,
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    // Nominal saldo tabungan
                    const Text(
                      "Rp 11.638.042",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    // Informasi bunga tabungan
                    const Text(
                      "2,5% p.a. cair harian",
                      style: TextStyle(color: Colors.white70, fontSize: 12),
                    ),
                  ],
                ),
              ),

              // === KOLOM DEPOSITO ===
              Expanded(
                flex: 5, // Lebar kolom sedikit lebih kecil
                child: Padding(
                  padding: const EdgeInsets.only(left: 12), // Jarak antar kolom
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Judul Deposito + ikon panah kanan
                      Row(
                        children: const [
                          Text(
                            "Deposito",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(width: 6),
                          Icon(
                            Icons.chevron_right,
                            color: Colors.white70,
                            size: 18,
                          ),
                        ],
                      ),
                      const SizedBox(height: 6),
                      // Baris saldo deposito + tombol buka deposito
                      Row(
                        children: [
                          const Text(
                            "Rp 0", // Saldo deposito
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 8),

                          // === TOMBOL GRADIENT "BUKA DEPOSITO" ===
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              // Gradien horizontal warna emas keemasan
                              gradient: const LinearGradient(
                                colors: [
                                  Color(0xFFFFFBE7), // Putih kiri
                                  Color(0xFFFFE066), // Kuning tengah
                                  Color(0xFFFFC107), // Emas kanan
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                              ),
                              borderRadius: BorderRadius.circular(
                                20,
                              ), // Bentuk kapsul
                              boxShadow: [
                                // Bayangan lembut pada tombol
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.3),
                                  offset: const Offset(0, 1),
                                ),
                              ],
                            ),
                            // Tulisan pada tombol
                            child: const Text(
                              "Buka Deposito",
                              style: TextStyle(
                                color: Colors.black87,
                                fontWeight: FontWeight.w600,
                                fontSize: 11.5,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      // Keterangan bunga deposito
                      const Text(
                        "Hingga 6% p.a.",
                        style: TextStyle(color: Colors.white70, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
