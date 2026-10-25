import 'package:flutter/material.dart';
import 'halaman_topup.dart';
import 'halaman_transfer.dart';
import 'halaman_scan_qr.dart';
import 'halaman_riwayat.dart';
import 'halaman_pulsa_data.dart';
import 'halaman_voucher_game.dart';
import 'halaman_transportasi.dart';
import 'halaman_tagihan_air.dart';
import 'halaman_listrik.dart';
import 'halaman_tv_kabel.dart';
import 'halaman_streaming.dart';
import 'halaman_belanja.dart';
import 'halaman_donasi.dart';
import 'halaman_asuransi.dart';
import 'halaman_investasi.dart';
import 'halaman_lainnya.dart';
import 'halaman_profile.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              // Baris ke 1
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 232, 241, 255),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.add),
                          iconSize: 32,
                          color: const Color.fromARGB(255, 30, 136, 229),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HalamanTopUp(),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Top Up',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 232, 241, 255),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.send),
                          iconSize: 32,
                          color: const Color.fromARGB(255, 30, 136, 229),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HalamanTransfer(),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Transfer',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 243, 224),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.qr_code_scanner),
                          iconSize: 32,
                          color: const Color.fromARGB(255, 230, 81, 0),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HalamanScanQr(),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Scan QR',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 232, 245, 233),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.receipt_long),
                          iconSize: 32,
                          color: const Color.fromARGB(255, 46, 125, 50),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HalamanRiwayat(),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Riwayat',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Baris ke 2
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 235, 238),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.smartphone),
                          iconSize: 32,
                          color: const Color.fromARGB(255, 233, 30, 99),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HalamanPulsaData(),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Pulsa & Data',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 248, 225),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.sports_esports),
                          iconSize: 32,
                          color: const Color.fromARGB(255, 255, 160, 0),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HalamanVoucherGame(),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Voucher Game',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 229, 245),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.directions_bus),
                          iconSize: 32,
                          color: const Color.fromARGB(255, 142, 36, 170),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HalamanTransportasi(),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Transportasi',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 225, 245, 254),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.water_drop),
                          iconSize: 32,
                          color: const Color.fromARGB(255, 2, 136, 209),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HalamanTagihanAir(),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Tagihan Air',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Baris ke 3
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 232, 245, 233),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.bolt),
                          iconSize: 32,
                          color: const Color.fromARGB(255, 0, 200, 83),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HalamanListrik(),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Listrik',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 235, 238),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.tv),
                          iconSize: 32,
                          color: const Color.fromARGB(255, 255, 64, 129),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HalamanTvKabel(),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'TV Kabel',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 243, 229, 245),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.credit_card),
                          iconSize: 32,
                          color: const Color.fromARGB(255, 124, 77, 255),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HalamanStreaming(),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Streaming',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 235, 238),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.shopping_bag),
                          iconSize: 32,
                          color: const Color.fromARGB(255, 255, 23, 68),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HalamanBelanja(),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Belanja',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Baris ke 4
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 232, 241, 255),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.volunteer_activism),
                          iconSize: 32,
                          color: const Color.fromARGB(255, 25, 118, 210),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HalamanDonasi(),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Donasi',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 232, 245, 233),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.verified_user),
                          iconSize: 32,
                          color: const Color.fromARGB(255, 0, 230, 118),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HalamanAsuransi(),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Asuransi',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 248, 225),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.monetization_on),
                          iconSize: 32,
                          color: const Color.fromARGB(255, 255, 179, 0),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HalamanInvestasi(),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Investasi',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 245, 245, 245),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.apps),
                          iconSize: 32,
                          color: const Color.fromARGB(255, 117, 117, 117),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HalamanLainnya(),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Lainnya',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // Tombol Kembali
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Kembali"),
              ),

            // ElevatedButton // Row // ElevatedButton
            ],
          ),
        ),
      ),
    );
  }
}