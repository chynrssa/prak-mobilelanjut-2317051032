import 'package:flutter/material.dart';

// =====================
// HALAMAN TRANSFER
// =====================
class TransferPage extends StatefulWidget {
  const TransferPage({super.key});

  @override
  State<TransferPage> createState() => _TransferPageState();
}

// State digunakan karena halaman ini memiliki interaksi (ganti tab)
class _TransferPageState extends State<TransferPage> {
  bool isFavorit = false; // Menentukan apakah tab "Favorit" sedang aktif

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // Warna latar belakang halaman
      body: SafeArea(
        // Agar tampilan tidak tertutup status bar atau notch
        child: Column(
          children: [
            // === BAGIAN HEADER ORANGE (ATAS) ===
            Container(
              decoration: const BoxDecoration(
                // Gradien warna orange terang ke gelap
                gradient: LinearGradient(
                  colors: [Color(0xFFFF7A00), Color(0xFFEE6B00)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              padding: const EdgeInsets.fromLTRB(16, 18, 16, 14), // Jarak dalam
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Teks judul "Bayar/Transfer"
                  const Text(
                    "Bayar/Transfer",
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      letterSpacing: 0.2,
                    ),
                  ),
                  // Ikon notifikasi dengan efek transparan di belakang
                  Container(
                    height: 38,
                    width: 38,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.15),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.25),
                        width: 1,
                      ),
                    ),
                    child: const Icon(
                      Icons.notifications_none_outlined,
                      color: Colors.white,
                      size: 22,
                    ),
                  ),
                ],
              ),
            ),

            // === BAGIAN MENU PUTIH "TRANSFER KE" ===
            Container(
              color: const Color(0xFFEE6B00), // Warna oranye di belakang
              width: double.infinity,
              child: Container(
                // Bagian putih di atas warna oranye
                margin: const EdgeInsets.only(top: 6),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 18,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Label judul
                    const Text(
                      "Transfer ke",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 15.5,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 14),
                    // === GRID MENU PILIHAN TRANSFER ===
                    GridView.count(
                      crossAxisCount: 4, // 4 kolom dalam satu baris
                      shrinkWrap:
                          true, // Supaya tidak memakan seluruh tinggi layar
                      physics:
                          const NeverScrollableScrollPhysics(), // Tidak bisa di-scroll
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 10,
                      children: const [
                        // Daftar menu dengan ikon dan label
                        _MenuIcon("assets/icons/seabank.png", "SeaBank"),
                        _MenuIcon("assets/icons/bank_lain.png", "Bank Lain"),
                        _MenuIcon(
                          "assets/icons/virtual_account.png",
                          "Virtual Account",
                        ),
                        _MenuIcon(
                          "assets/icons/topup_wallet.png",
                          "Top Up E-Wallet",
                          isLarge: true,
                        ),
                        _MenuIcon(
                          "assets/icons/topup_tagihan.png",
                          "Top Up & Tagihan",
                        ),
                        _MenuIcon(
                          "assets/icons/transfer_group.png",
                          "Transfer Grup",
                        ),
                        _MenuIcon(
                          "assets/icons/transfer_jadwal.png",
                          "Transfer Terjadwal",
                        ),
                        _MenuIcon(
                          "assets/icons/qr_bayar.png",
                          "Tampilkan QR Bayar",
                          isLarge: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 10),

            // === TAB “TRANSAKSI TERAKHIR” DAN “FAVORIT” ===
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly, // Tab sejajar dan rata
                children: [
                  // Tab “Transaksi Terakhir”
                  GestureDetector(
                    onTap: () => setState(() => isFavorit = false), // Ganti tab
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Transaksi Terakhir",
                          style: TextStyle(
                            color: isFavorit
                                ? Colors.grey
                                : const Color(0xFFEE6B00),
                            fontWeight: isFavorit
                                ? FontWeight.w500
                                : FontWeight.w700,
                            fontSize: 14.5,
                            letterSpacing: 0.1,
                          ),
                        ),
                        const SizedBox(height: 2),
                        // Garis bawah aktif
                        if (!isFavorit)
                          Container(
                            width: 115,
                            height: 2.3,
                            color: const Color(0xFFEE6B00),
                          ),
                      ],
                    ),
                  ),
                  // Tab “Favorit”
                  GestureDetector(
                    onTap: () => setState(
                      () => isFavorit = true,
                    ), // Ganti tab ke Favorit
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Favorit",
                          style: TextStyle(
                            color: isFavorit
                                ? const Color(0xFFEE6B00)
                                : Colors.grey,
                            fontWeight: isFavorit
                                ? FontWeight.w700
                                : FontWeight.w500,
                            fontSize: 14.5,
                            letterSpacing: 0.1,
                          ),
                        ),
                        const SizedBox(height: 2),
                        if (isFavorit)
                          Container(
                            width: 60,
                            height: 2.3,
                            color: const Color(0xFFEE6B00),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // === KOLOM PENCARIAN ===
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Cari penerima di sini", // Placeholder teks
                  hintStyle: const TextStyle(fontSize: 14, color: Colors.grey),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ), // Ikon kaca pembesar
                  filled: true,
                  fillColor: const Color(0xFFF6F6F6),
                  contentPadding: const EdgeInsets.symmetric(vertical: 10),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      25,
                    ), // Border melengkung
                    borderSide: BorderSide.none, // Hilangkan garis border
                  ),
                ),
              ),
            ),

            // === KONTEN UTAMA BERDASARKAN TAB ===
            Expanded(
              // Jika tab "Favorit" aktif, tampilkan tampilan kosong
              child: isFavorit
                  ? _FavoritEmptyView()
                  // Jika tab "Transaksi Terakhir" aktif, tampilkan daftar kontak
                  : ListView(
                      padding: EdgeInsets.zero,
                      children: const [
                        _ContactItem(
                          "Raju Juanda Putra",
                          "BRI: 817301003490532",
                          Colors.orange,
                        ),
                        _ContactItem(
                          "Dnid Cahxx Nerxxxx",
                          "Dana: 085788755379",
                          Colors.blue,
                        ),
                        _ContactItem(
                          "Dnid Achxx Ghaxx Hafxxx",
                          "Dana: 083147158593",
                          Colors.blue,
                        ),
                        _ContactItem(
                          "Ella Karina Anindita",
                          "SeaBank: 901117298060",
                          Colors.orange,
                        ),
                        _ContactItem(
                          "Dnid Irmx Nurxxxxxx",
                          "Dana: 085762005247",
                          Colors.blue,
                        ),
                        _ContactItem(
                          "Defina Rahmayanti",
                          "SeaBank: 901131444857",
                          Colors.orange,
                        ),
                        _ContactItem(
                          "Clara Monica",
                          "SeaBank: 901424155979",
                          Colors.orange,
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

// =====================
// COMPONENT: MENU ICON
// =====================
class _MenuIcon extends StatelessWidget {
  final String iconPath; // Lokasi ikon
  final String label; // Label teks di bawah ikon
  final bool isLarge; // Ukuran ikon (besar atau kecil)

  const _MenuIcon(this.iconPath, this.label, {this.isLarge = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50, // Tinggi area ikon
          child: Center(
            child: Image.asset(
              iconPath,
              width: isLarge ? 40 : 32, // Ukuran ikon
              height: isLarge ? 40 : 32,
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          label,
          textAlign: TextAlign.center, // Teks di bawah ikon rata tengah
          style: const TextStyle(
            fontSize: 11,
            color: Colors.black87,
            height: 1.2,
          ),
        ),
      ],
    );
  }
}

// =====================
// COMPONENT: CONTACT ITEM (LIST KONTAK)
// =====================
class _ContactItem extends StatelessWidget {
  final String name; // Nama penerima
  final String subtitle; // Keterangan (nomor rekening / e-wallet)
  final Color iconColor;

  const _ContactItem(this.name, this.subtitle, this.iconColor, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Latar belakang putih
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          // Avatar lingkaran kecil dengan ikon orang
          CircleAvatar(
            radius: 18,
            backgroundColor: iconColor.withOpacity(0.15),
            child: Icon(Icons.person, color: iconColor, size: 20),
          ),
          const SizedBox(width: 12),
          // Nama dan detail rekening
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 13.5,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
          // Ikon bintang kosong di kanan
          const Icon(Icons.star_border, color: Colors.orange, size: 20),
        ],
      ),
    );
  }
}

// =====================
// COMPONENT: TAMPILAN FAVORIT KOSONG
// =====================
class _FavoritEmptyView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white, // Latar putih
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Konten di tengah layar
        children: [
          // Gambar ikon favorit kosong
          Image.asset("assets/icons/favorite_empty.png", width: 70, height: 70),
          const SizedBox(height: 16),
          // Pesan teks jika belum ada favorit
          const Text(
            "Kamu belum menambahkan penerima favorit",
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
