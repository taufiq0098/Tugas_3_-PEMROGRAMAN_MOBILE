import 'package:flutter/material.dart';

// ================= KERANGKA & PEMBANTU =================
class FiturPage extends StatelessWidget {
  final String title;
  final Color color;
  final List<Widget> children;

  const FiturPage({
    super.key,
    required this.title,
    required this.color,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), backgroundColor: color.withAlpha(60)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: children,
      ),
    );
  }
}

void _pesan(BuildContext context, String teks) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(teks)));
}

Widget _judul(String teks) => Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 8),
      child: Text(teks,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
    );

Widget _banner(IconData icon, Color color, String judul, String sub) =>
    Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color.withAlpha(30),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, size: 40, color: color),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(judul, style: const TextStyle(fontSize: 14)),
                Text(sub,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );

Widget _input(String label, IconData icon, {bool angka = false}) => Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextField(
        keyboardType: angka ? TextInputType.number : TextInputType.text,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon),
          border: const OutlineInputBorder(),
        ),
      ),
    );

Widget _nominal(BuildContext context, List<String> daftar) => Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        for (final n in daftar)
          OutlinedButton(
            onPressed: () => _pesan(context, 'Dipilih: $n'),
            child: Text(n),
          ),
      ],
    );

Widget _tombol(BuildContext context, String teks, String pesan) => Padding(
      padding: const EdgeInsets.only(top: 16),
      child: SizedBox(
        height: 48,
        child: ElevatedButton(
          onPressed: () => _pesan(context, pesan),
          child: Text(teks),
        ),
      ),
    );

Widget _kartu(BuildContext context, IconData icon, Color color, String judul,
    String sub) {
  return InkWell(
    borderRadius: BorderRadius.circular(10),
    onTap: () => _pesan(context, '$judul dipilih'),
    child: Container(
      padding: const EdgeInsets.all(14),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(icon, size: 36, color: color),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(judul,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600)),
                Text(sub),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios, size: 16),
        ],
      ),
    ),
  );
}

Widget _produk(BuildContext context, IconData icon, Color color, String nama,
    String harga) {
  return Expanded(
    child: InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () => _pesan(context, '$nama masuk keranjang'),
      child: Container(
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Icon(icon, size: 48, color: color),
            const SizedBox(height: 8),
            Text(nama, textAlign: TextAlign.center),
            Text(harga, style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    ),
  );
}

// ================= 1. TOP UP =================
class TopUpPage extends StatelessWidget {
  const TopUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    const warna = Color.fromARGB(255, 30, 136, 229);
    return FiturPage(title: 'Top Up', color: warna, children: [
      _banner(Icons.account_balance_wallet, warna, 'Saldo Anda', 'Rp 500.000'),
      _judul('Pilih nominal'),
      _nominal(context,
          ['Rp 10.000', 'Rp 20.000', 'Rp 50.000', 'Rp 100.000', 'Rp 200.000']),
      _judul('Metode pembayaran'),
      _kartu(context, Icons.account_balance, warna, 'Transfer Bank',
          'BCA, BNI, BRI, Mandiri'),
      _kartu(context, Icons.store, warna, 'Minimarket', 'Indomaret, Alfamart'),
      _tombol(context, 'Top Up Sekarang', 'Top Up sedang diproses'),
    ]);
  }
}

// ================= 2. TRANSFER =================
class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    const warna = Color.fromARGB(255, 30, 136, 229);
    return FiturPage(title: 'Transfer', color: warna, children: [
      _banner(Icons.send, warna, 'Saldo tersedia', 'Rp 500.000'),
      _judul('Data penerima'),
      _input('Nomor rekening / HP', Icons.person, angka: true),
      _input('Jumlah transfer', Icons.payments, angka: true),
      _input('Catatan (opsional)', Icons.edit_note),
      _tombol(context, 'Kirim Sekarang', 'Transfer berhasil dikirim'),
    ]);
  }
}

// ================= 3. SCAN QR =================
class ScanQrPage extends StatelessWidget {
  const ScanQrPage({super.key});

  @override
  Widget build(BuildContext context) {
    const warna = Color.fromARGB(255, 230, 81, 0);
    return FiturPage(title: 'Scan QR', color: warna, children: [
      const SizedBox(height: 20),
      Center(
        child: Container(
          width: 220,
          height: 220,
          decoration: BoxDecoration(
            border: Border.all(color: warna, width: 3),
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Icon(Icons.qr_code_scanner, size: 120, color: warna),
        ),
      ),
      const SizedBox(height: 20),
      const Text('Arahkan kamera ke kode QR',
          textAlign: TextAlign.center, style: TextStyle(fontSize: 16)),
      _tombol(context, 'Mulai Scan', 'Kamera dibuka'),
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: OutlinedButton(
          onPressed: () => _pesan(context, 'Buka galeri'),
          child: const Text('Pilih dari galeri'),
        ),
      ),
    ]);
  }
}

// ================= 4. RIWAYAT =================
class RiwayatPage extends StatelessWidget {
  const RiwayatPage({super.key});

  @override
  Widget build(BuildContext context) {
    const warna = Color.fromARGB(255, 46, 125, 50);
    return FiturPage(title: 'Riwayat', color: warna, children: [
      _judul('Transaksi terbaru'),
      _kartu(context, Icons.arrow_upward, Colors.red, 'Transfer ke Budi',
          '- Rp 150.000  •  Hari ini'),
      _kartu(context, Icons.arrow_downward, warna, 'Top Up Saldo',
          '+ Rp 200.000  •  Kemarin'),
      _kartu(context, Icons.bolt, Colors.orange, 'Token Listrik',
          '- Rp 100.000  •  2 hari lalu'),
      _kartu(context, Icons.smartphone, Colors.pink, 'Pulsa 50.000',
          '- Rp 51.000  •  3 hari lalu'),
    ]);
  }
}

// ================= 5. PULSA & DATA =================
class PulsaPage extends StatelessWidget {
  const PulsaPage({super.key});

  @override
  Widget build(BuildContext context) {
    const warna = Color.fromARGB(255, 233, 30, 99);
    return FiturPage(title: 'Pulsa & Data', color: warna, children: [
      _input('Nomor HP', Icons.phone_android, angka: true),
      _judul('Pilih pulsa'),
      _nominal(context,
          ['Rp 10.000', 'Rp 25.000', 'Rp 50.000', 'Rp 100.000']),
      _judul('Paket data'),
      _kartu(context, Icons.wifi, warna, 'Data 5 GB', '30 hari  •  Rp 35.000'),
      _kartu(context, Icons.wifi, warna, 'Data 15 GB', '30 hari  •  Rp 75.000'),
      _tombol(context, 'Beli Sekarang', 'Pembelian diproses'),
    ]);
  }
}

// ================= 6. VOUCHER GAME =================
class VoucherGamePage extends StatelessWidget {
  const VoucherGamePage({super.key});

  @override
  Widget build(BuildContext context) {
    const warna = Color.fromARGB(255, 255, 160, 0);
    return FiturPage(title: 'Voucher Game', color: warna, children: [
      _judul('Pilih game'),
      _kartu(context, Icons.sports_esports, warna, 'Mobile Legends',
          'Diamond mulai Rp 3.000'),
      _kartu(context, Icons.sports_esports, warna, 'Free Fire',
          'Diamond mulai Rp 2.000'),      
      _kartu(context, Icons.sports_esports, warna, 'PUBG Mobile',
          'UC mulai Rp 15.000'),
      _kartu(context, Icons.sports_esports, warna, 'Genshin Impact',
          'Genesis Crystal mulai Rp 16.000'),
    ]);
  }
}

// ================= 7. TRANSPORTASI =================
class TransportasiPage extends StatelessWidget {
  const TransportasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    const warna = Color.fromARGB(255, 142, 36, 170);
    return FiturPage(title: 'Transportasi', color: warna, children: [
      _judul('Pilih layanan'),
      _kartu(context, Icons.directions_bus, warna, 'Bus', 'Tiket antar kota'),
      _kartu(context, Icons.train, warna, 'Kereta Api', 'Tiket KA seluruh Jawa'),
      _kartu(context, Icons.flight, warna, 'Pesawat', 'Tiket domestik'),
      _kartu(context, Icons.two_wheeler, warna, 'Ojek Online',
          'Top up saldo driver'),
    ]);
  }
}

// ================= 8. TAGIHAN AIR =================
class TagihanAirPage extends StatelessWidget {
  const TagihanAirPage({super.key});

  @override
  Widget build(BuildContext context) {
    const warna = Color.fromARGB(255, 2, 136, 209);
    return FiturPage(title: 'Tagihan Air', color: warna, children: [
      _banner(Icons.water_drop, warna, 'Tagihan PDAM', 'Cek tagihan Anda'),
      _judul('Data pelanggan'),
      _input('Nomor pelanggan', Icons.numbers, angka: true),
      _input('Wilayah PDAM', Icons.location_city),
      _tombol(context, 'Cek Tagihan', 'Tagihan sedang dicek'),
    ]);
  }
}

// ================= 9. LISTRIK =================
class ListrikPage extends StatelessWidget {
  const ListrikPage({super.key});

  @override
  Widget build(BuildContext context) {
    const warna = Color.fromARGB(255, 0, 200, 83);
    return FiturPage(title: 'Listrik', color: warna, children: [
      Row(
        children: [
          Expanded(
            child: ElevatedButton(
              onPressed: () => _pesan(context, 'Token listrik dipilih'),
              child: const Text('Token PLN'),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: OutlinedButton(
              onPressed: () => _pesan(context, 'Tagihan listrik dipilih'),
              child: const Text('Tagihan'),
            ),
          ),
        ],
      ),
      _judul('ID pelanggan'),
      _input('Nomor meter / ID pelanggan', Icons.electric_meter, angka: true),
      _judul('Nominal token'),
      _nominal(context,
          ['Rp 20.000', 'Rp 50.000', 'Rp 100.000', 'Rp 200.000']),
      _tombol(context, 'Beli Token', 'Token sedang diproses'),
    ]);
  }
}

// ================= 10. TV KABEL =================
class TvKabelPage extends StatelessWidget {
  const TvKabelPage({super.key});

  @override
  Widget build(BuildContext context) {
    const warna = Color.fromARGB(255, 255, 64, 129);
    return FiturPage(title: 'TV Kabel', color: warna, children: [
      _judul('Pilih provider'),
      _kartu(context, Icons.tv, warna, 'IndiHome TV', 'Mulai Rp 150.000 / bulan'),
      _kartu(context, Icons.tv, warna, 'First Media', 'Mulai Rp 200.000 / bulan'),
      _kartu(context, Icons.tv, warna, 'MNC Vision', 'Mulai Rp 100.000 / bulan'),
      _input('Nomor pelanggan', Icons.numbers, angka: true),
      _tombol(context, 'Bayar Tagihan', 'Pembayaran diproses'),
    ]);
  }
}

// ================= 11. STREAMING =================
class StreamingPage extends StatelessWidget {
  const StreamingPage({super.key});

  @override
  Widget build(BuildContext context) {
    const warna = Color.fromARGB(255, 124, 77, 255);
    return FiturPage(title: 'Streaming', color: warna, children: [
      _judul('Langganan streaming'),
      _kartu(context, Icons.movie, warna, 'Netflix', 'Rp 54.000 / bulan'),
      _kartu(context, Icons.music_note, warna, 'Spotify', 'Rp 55.000 / bulan'),
      _kartu(context, Icons.play_circle, warna, 'YouTube Premium',
          'Rp 59.000 / bulan'),
      _kartu(context, Icons.live_tv, warna, 'Disney+', 'Rp 39.000 / bulan'),
    ]);
  }
}

// ================= 12. BELANJA =================
class BelanjaPage extends StatelessWidget {
  const BelanjaPage({super.key});

  @override
  Widget build(BuildContext context) {
    const warna = Color.fromARGB(255, 255, 23, 68);
    return FiturPage(title: 'Belanja', color: warna, children: [
      _judul('Produk pilihan'),
      Row(children: [
        _produk(context, Icons.checkroom, warna, 'Kaos', 'Rp 75.000'),
        _produk(context, Icons.headphones, warna, 'Headphone', 'Rp 250.000'),
      ]),
      Row(children: [
        _produk(context, Icons.watch, warna, 'Jam Tangan', 'Rp 300.000'),
        _produk(context, Icons.backpack, warna, 'Tas Ransel', 'Rp 180.000'),
      ]),
    ]);
  }
}

// ================= 13. DONASI =================
class DonasiPage extends StatelessWidget {
  const DonasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    const warna = Color.fromARGB(255, 25, 118, 210);
    return FiturPage(title: 'Donasi', color: warna, children: [
      _judul('Pilih program donasi'),
      _kartu(context, Icons.school, warna, 'Beasiswa Anak Yatim',
          'Terkumpul Rp 12.500.000'),
      _kartu(context, Icons.local_hospital, warna, 'Bantuan Kesehatan',
          'Terkumpul Rp 8.200.000'),
      _kartu(context, Icons.flood, warna, 'Korban Bencana Alam',
          'Terkumpul Rp 25.000.000'),
      _judul('Nominal donasi'),
      _nominal(context, ['Rp 10.000', 'Rp 50.000', 'Rp 100.000']),
      _tombol(context, 'Donasi Sekarang', 'Terima kasih atas donasi Anda'),
    ]);
  }
}

// ================= 14. ASURANSI =================
class AsuransiPage extends StatelessWidget {
  const AsuransiPage({super.key});

  @override
  Widget build(BuildContext context) {
    const warna = Color.fromARGB(255, 0, 230, 118);
    return FiturPage(title: 'Asuransi', color: warna, children: [
      _judul('Jenis asuransi'),
      _kartu(context, Icons.favorite, warna, 'Asuransi Kesehatan',
          'Mulai Rp 50.000 / bulan'),
      _kartu(context, Icons.directions_car, warna, 'Asuransi Kendaraan',
          'Mulai Rp 100.000 / bulan'),
      _kartu(context, Icons.home, warna, 'Asuransi Rumah',
          'Mulai Rp 75.000 / bulan'),
      _kartu(context, Icons.flight, warna, 'Asuransi Perjalanan',
          'Mulai Rp 30.000 / perjalanan'),
    ]);
  }
}

// ================= 15. INVESTASI =================
class InvestasiPage extends StatelessWidget {
  const InvestasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    const warna = Color.fromARGB(255, 255, 179, 0);
    return FiturPage(title: 'Investasi', color: warna, children: [
      _banner(Icons.trending_up, warna, 'Total investasi', 'Rp 2.500.000'),
      _judul('Pilih instrumen'),
      _kartu(context, Icons.pie_chart, warna, 'Reksa Dana',
          'Mulai dari Rp 10.000'),
      _kartu(context, Icons.diamond, warna, 'Emas Digital',
          'Mulai dari Rp 5.000'),
      _kartu(context, Icons.show_chart, warna, 'Saham', 'Mulai dari 1 lot'),
      _kartu(context, Icons.account_balance, warna, 'Obligasi',
          'Mulai dari Rp 1.000.000'),
    ]);
  }
}

// ================= 16. LAINNYA =================
class LainnyaPage extends StatelessWidget {
  const LainnyaPage({super.key});

  @override
  Widget build(BuildContext context) {
    const warna = Color.fromARGB(255, 117, 117, 117);
    return FiturPage(title: 'Lainnya', color: warna, children: [
      _judul('Menu lainnya'),
      _kartu(context, Icons.person, warna, 'Profil Saya', 'Atur data akun'),
      _kartu(context, Icons.settings, warna, 'Pengaturan',
          'Notifikasi, keamanan, bahasa'),
      _kartu(context, Icons.help, warna, 'Pusat Bantuan', 'Pertanyaan umum'),
      _kartu(context, Icons.info, warna, 'Tentang Aplikasi', 'Versi 1.0.0'),
    ]);
  }
}