import 'package:flutter/material.dart';

// Halaman Deposito
class DepositoPage extends StatelessWidget {
  const DepositoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8FA),
      body: SingleChildScrollView(
        // memungkinkan halaman di-scroll
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ================= HEADER =================
            Container(
              height: 230,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  // gradasi warna oranye ke bawah
                  colors: [Color(0xFFFF7C1D), Color(0xFFFF8C2D)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Stack(
                // untuk menumpuk teks dan gambar
                children: [
                  // Gambar di kanan bawah
                  Positioned(
                    right: 20,
                    bottom: 10,
                    child: Image.asset(
                      'assets/images/depo.png',
                      width: 130,
                      fit: BoxFit.contain,
                    ),
                  ),

                  // Baris atas: Teks "Deposito" + Ikon Notifikasi
                  Positioned(
                    left: 20,
                    top: 40,
                    right: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Deposito",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.3,
                          ),
                        ),
                        // Tombol notifikasi berbentuk lingkaran
                        Container(
                          height: 34,
                          width: 34,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withOpacity(0.2),
                            border: Border.all(
                              color: Colors.white.withOpacity(0.4),
                            ),
                          ),
                          child: const Icon(
                            Icons.notifications_none,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Teks utama di kiri bawah
                  const Positioned(
                    left: 20,
                    bottom: 45,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nikmati bunga hingga\n6% p.a.",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            height: 1.3,
                          ),
                        ),
                        SizedBox(height: 8),
                        SizedBox(
                          width: 220, // agar teks tidak menabrak gambar
                          child: Text(
                            "Raih keuntungan lebih dari uang Kamu sekarang!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              height: 1.3,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // ================= DEPOSITO FLASH DEALS =================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Judul bagian kiri
                  Row(
                    children: const [
                      Icon(Icons.flash_on, color: Colors.orange, size: 20),
                      SizedBox(width: 6),
                      Text(
                        "Deposito Flash Deals",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  // Label kecil “Setiap Kamis”
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 3,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF3E0),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: const Text(
                      "Setiap Kamis",
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            // List horizontal berisi Flash Deal Card
            SizedBox(
              height: 120,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                children: const [
                  FlashDealCard(
                    "12 bulan",
                    "7,7% p.a.",
                    "6,50% p.a.",
                    "100 kuota",
                  ),
                  FlashDealCard(
                    "6 bulan",
                    "6,2% p.a.",
                    "5,25% p.a.",
                    "300 kuota",
                  ),
                  FlashDealCard(
                    "3 bulan",
                    "5,7% p.a.",
                    "4,50% p.a.",
                    "1.000 kuota",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // ================= HADIAH DEPOSITO INSTANT =================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Hadiah Deposito Instan",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                  // Tombol kecil “Lihat Semua”
                  Row(
                    children: [
                      Text(
                        "Lihat Semua",
                        style: TextStyle(
                          color: Colors.orange,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(Icons.chevron_right, color: Colors.orange, size: 18),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            // List horizontal berisi hadiah deposito
            SizedBox(
              height: 140,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                children: const [
                  HadiahDepositoCard(
                    imagePath: "assets/images/hadiah1.png",
                    nominalRp: "Rp 29.250.000",
                    bunga: "Bunga 7,25%",
                  ),
                  HadiahDepositoCard(
                    imagePath: "assets/images/hadiah2.png",
                    nominalRp: "Rp 14.000.000",
                    bunga: "Bunga 6,94%",
                  ),
                  HadiahDepositoCard(
                    imagePath: "assets/images/hadiah3.png",
                    nominalRp: "Rp 6.500.000",
                    bunga: "Bunga 6,45%",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // ================= PENAWARAN SPESIAL =================
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Penawaran Spesial",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
            ),
            const SizedBox(height: 10),
            // Banner gambar promo
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/promo_banner.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // ================= PRODUK FAVORIT =================
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Produk Favorit",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
            ),
            const SizedBox(height: 10),

            // Card putih berisi detail produk
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Colors.grey.shade300.withOpacity(0.7),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Label rekomendasi
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFF3E0),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: const Text(
                        "Rekomendasi",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Mulai dari Rp 1.000.000",
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                    const SizedBox(height: 6),
                    // Bagian bunga dan durasi
                    Row(
                      children: const [
                        Text(
                          "6%",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          "p.a.",
                          style: TextStyle(color: Colors.black54, fontSize: 14),
                        ),
                        SizedBox(width: 8),
                        Text(
                          "12 bulan jangka waktu",
                          style: TextStyle(color: Colors.black87, fontSize: 14),
                        ),
                      ],
                    ),
                    const SizedBox(height: 6),
                    // Tag fitur produk
                    Row(
                      children: [
                        _TagChip("Bunga tinggi"),
                        const SizedBox(width: 8),
                        _TagChip("Tanpa Biaya Admin"),
                      ],
                    ),
                    const SizedBox(height: 12),
                    // Tombol aksi
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 14),
                        ),
                        child: const Text(
                          "Simulasi & Buka Deposito",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // ================= DEPOSITO PALING DIMINATI =================
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Deposito Paling Diminati",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
              ),
            ),
            const SizedBox(height: 10),

            // List deposito populer
            const _DepositoListTile(
              rate: "3,75% p.a.",
              tenor: "1 bulan",
              desc: "Mulai dari Rp 1.000.000",
            ),
            const _DepositoListTile(
              rate: "4,5% p.a.",
              tenor: "3 bulan",
              desc: "Mulai dari Rp 1.000.000",
            ),
            const _DepositoListTile(
              rate: "5,25% p.a.",
              tenor: "6 bulan",
              desc: "Mulai dari Rp 1.000.000",
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

// ======================================================
// FLASH DEAL CARD
// ======================================================
class FlashDealCard extends StatelessWidget {
  final String tenor, rateNow, rateBefore, quota;
  const FlashDealCard(
    this.tenor,
    this.rateNow,
    this.rateBefore,
    this.quota, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.orange.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(tenor, style: const TextStyle(fontWeight: FontWeight.w600)),
          const SizedBox(height: 6),
          Text(
            rateNow,
            style: const TextStyle(
              color: Colors.orange,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            rateBefore,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
              decoration: TextDecoration.lineThrough, // dicoret
            ),
          ),
          const Spacer(),
          Text(quota, style: const TextStyle(color: Colors.grey, fontSize: 11)),
        ],
      ),
    );
  }
}

// ======================================================
// HADIAH DEPOSITO CARD
// ======================================================
class HadiahDepositoCard extends StatelessWidget {
  final String imagePath, nominalRp, bunga;
  const HadiahDepositoCard({
    super.key,
    required this.imagePath,
    required this.nominalRp,
    required this.bunga,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          // efek bayangan
          BoxShadow(
            color: Colors.grey.withOpacity(0.25),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Gambar hadiah
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.asset(
              imagePath,
              height: 70,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            nominalRp,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 3),
          Text(
            "($bunga)",
            style: const TextStyle(fontSize: 11, color: Colors.grey),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

// ======================================================
// TAG CHIP (label kecil dalam kartu produk)
// ======================================================
class _TagChip extends StatelessWidget {
  final String label;
  const _TagChip(this.label);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF3E0),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.orange,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

// ======================================================
// DEPOSITO LIST TILE (baris deposito populer)
// ======================================================
class _DepositoListTile extends StatelessWidget {
  final String rate, tenor, desc;
  const _DepositoListTile({
    required this.rate,
    required this.tenor,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Bagian kiri: detail deposito
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                rate,
                style: const TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                tenor,
                style: const TextStyle(fontSize: 13, color: Colors.black87),
              ),
              Text(
                desc,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
          // Tombol teks di kanan
          Text(
            "Buka Deposito",
            style: TextStyle(
              color: Colors.orange.shade700,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
