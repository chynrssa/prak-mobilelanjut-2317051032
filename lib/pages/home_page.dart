import 'package:flutter/material.dart';
import '../widgets/balance_card.dart';
import '../widgets/transaction_item.dart';

// ===================
// HALAMAN UTAMA (HomePage)
// ===================
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Variabel untuk menandai apakah teks “Transaksi lainnya” diklik
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Warna latar belakang abu muda
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        // Agar tampilan tidak terpotong notch atau status bar
        child: SingleChildScrollView(
          // Agar seluruh halaman bisa digulir
          child: Column(
            children: [
              // ================= HEADER =================
              Container(
                color: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 14,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // === Bagian kiri: Avatar dan Nama pengguna ===
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 22,
                          backgroundImage: AssetImage(
                            'assets/images/profile.png',
                          ),
                        ),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Nama pengguna
                            const Text(
                              "Cahya Nerissa",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Row(
                              children: [
                                // Nomor rekening
                                const Text(
                                  "No. Rekening: 9017 3747 3829",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 13,
                                  ),
                                ),
                                const SizedBox(width: 6),
                                // Tombol “Salin”
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 3,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.orange.shade50,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: const Text(
                                      "Salin",
                                      style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),

                    // === Bagian kanan: Tombol notifikasi ===
                    Container(
                      height: 38,
                      width: 38,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.grey.shade300,
                          width: 1.2,
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_outlined,
                          size: 22,
                          color: Colors.grey.shade700,
                        ),
                        padding: EdgeInsets.zero,
                        splashRadius: 22,
                      ),
                    ),
                  ],
                ),
              ),

              // ================= KARTU SALDO =================
              const BalanceCard(),
              const SizedBox(height: 10),

              // ================= MENU UTAMA =================
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                padding: const EdgeInsets.symmetric(
                  horizontal: 6,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: GridView.count(
                  crossAxisCount: 4, // 4 kolom menu
                  childAspectRatio: 0.9,
                  shrinkWrap: true,
                  physics:
                      const NeverScrollableScrollPhysics(), // tidak scroll sendiri
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 4,
                  children: const [
                    _MenuItem('assets/icons/transfer.png', 'Transfer'),
                    _MenuItem(
                      'assets/icons/topup_tagihan.png',
                      'Top Up & Tagihan',
                    ),
                    _MenuItem(
                      'assets/icons/topup_wallet.png',
                      'Top Up\nE-Wallet',
                    ),
                    _MenuItem('assets/icons/undang_teman.png', 'Undang Teman'),
                    _MenuItem('assets/icons/deposito.png', 'Deposito'),
                    _MenuItem('assets/icons/tarik_tunai.png', 'Tarik Tunai'),
                    _MenuItem('assets/icons/setor_tunai.png', 'Setor Tunai'),
                    _MenuItem('assets/icons/lihat_semua.png', 'Lihat Semua'),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // ================= FLASH DEALS =================
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF2E6),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Kiri: ikon & teks
                    const Row(
                      children: [
                        Icon(Icons.flash_on, color: Colors.orange),
                        SizedBox(width: 8),
                        Text(
                          "Deposito Flash Deals",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    // Kanan: tombol "Setiap Kamis"
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 5,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text(
                            "Setiap Kamis",
                            style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        const SizedBox(width: 4),
                        const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.grey,
                          size: 22,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),

              // ================= BANNER PROMO =================
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset("assets/images/promo_banner.png"),
              ),

              const SizedBox(height: 15),

              // ================= E-WALLET SAYA =================
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Judul bagian
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "E-Wallet Saya",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    // Dua kartu e-wallet berdampingan
                    Row(
                      children: const [
                        Expanded(
                          child: _EWalletCard(
                            title: "ShopeePay",
                            subtitle: "Hubungkan >",
                            imagePath: "assets/icons/shopeepay.png",
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: _EWalletCard(
                            title: "OVO",
                            subtitle: "Coba Lagi >",
                            imagePath: "assets/icons/ovo.png",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              // ================= RIWAYAT TRANSAKSI =================
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header dengan judul dan ikon panah kanan
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Riwayat Transaksi",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Icon(Icons.chevron_right, color: Colors.grey),
                      ],
                    ),
                    const SizedBox(height: 8),
                    // Item transaksi (3 contoh)
                    const TransactionItem(
                      name: "SABRINA NURHASANAH",
                      time: "18 Okt 2025, 21:44",
                      amount: 30000,
                    ),
                    const TransactionItem(
                      name: "Sulthon Abdul Hakim",
                      time: "18 Okt 2025, 16:15",
                      amount: 75000,
                    ),
                    const TransactionItem(
                      name: "Raris Anggusianto",
                      time: "18 Okt 2025, 15:42",
                      amount: 25000,
                    ),
                    const SizedBox(height: 6),
                    // Teks interaktif "Transaksi lainnya"
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          // Ubah warna teks saat diklik
                          setState(() {
                            isClicked = !isClicked;
                          });
                        },
                        child: Text(
                          "Transaksi lainnya >",
                          style: TextStyle(
                            color: isClicked
                                ? Colors.orange
                                : Colors.grey.shade600,
                            fontWeight: FontWeight.bold,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

// ===================
// WIDGET: MENU ITEM
// ===================
class _MenuItem extends StatelessWidget {
  final String iconPath; // path ikon
  final String label; // label teks di bawah ikon

  const _MenuItem(this.iconPath, this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    // Cek apakah ikon untuk E-Wallet (agar ukurannya berbeda)
    final bool isWallet = iconPath.contains('topup_wallet');

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Gambar ikon menu
        Padding(
          padding: EdgeInsets.only(top: isWallet ? 2 : 6, bottom: 6),
          child: Image.asset(
            iconPath,
            width: isWallet ? 40 : 24,
            height: isWallet ? 40 : 24,
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(height: 4),
        // Label menu
        Text(
          label,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
            height: 1.2,
          ),
        ),
      ],
    );
  }
}

// ===================
// WIDGET: E-WALLET CARD
// ===================
class _EWalletCard extends StatelessWidget {
  final String title; // Nama e-wallet
  final String subtitle; // Status (hubungkan, coba lagi)
  final String imagePath; // Path gambar ikon e-wallet

  const _EWalletCard({
    required this.title,
    required this.subtitle,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.orange.withOpacity(0.5)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Logo e-wallet
          Image.asset(imagePath, width: 36, height: 36),
          const SizedBox(width: 6),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Nama & status e-wallet
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 11,
                        color: Colors.orange,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
