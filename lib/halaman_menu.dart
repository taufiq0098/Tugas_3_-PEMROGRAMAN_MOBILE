import 'package:flutter/material.dart';

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
                        child: const Icon(
                          Icons.add,
                          size: 32,
                          color: Color.fromARGB(255, 30, 136, 229),
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
                        child: const Icon(
                          Icons.send,
                          size: 32,
                          color: Color.fromARGB(255, 30, 136, 229),
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
                        child: const Icon(
                          Icons.qr_code_scanner,
                          size: 32,
                          color: Color.fromARGB(255, 230, 81, 0),
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
                        child: const Icon(
                          Icons.receipt_long,
                          size: 32,
                          color: Color.fromARGB(255, 46, 125, 50),
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
                        child: const Icon(
                          Icons.smartphone,
                          size: 32,
                          color: Color.fromARGB(255, 233, 30, 99),
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
                        child: const Icon(
                          Icons.sports_esports,
                          size: 32,
                          color: Color.fromARGB(255, 255, 160, 0),
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
                        child: const Icon(
                          Icons.directions_bus,
                          size: 32,
                          color: Color.fromARGB(255, 142, 36, 170),
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
                        child: const Icon(
                          Icons.water_drop,
                          size: 32,
                          color: Color.fromARGB(255, 2, 136, 209),
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
                        child: const Icon(
                          Icons.bolt,
                          size: 32,
                          color: Color.fromARGB(255, 0, 200, 83),
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
                        child: const Icon(
                          Icons.tv,
                          size: 32,
                          color: Color.fromARGB(255, 255, 64, 129),
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
                        child: const Icon(
                          Icons.credit_card,
                          size: 32,
                          color: Color.fromARGB(255, 124, 77, 255),
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
                        child: const Icon(
                          Icons.shopping_bag,
                          size: 32,
                          color: Color.fromARGB(255, 255, 23, 68),
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
                        child: const Icon(
                          Icons.volunteer_activism,
                          size: 32,
                          color: Color.fromARGB(255, 25, 118, 210),
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
                        child: const Icon(
                          Icons.verified_user,
                          size: 32,
                          color: Color.fromARGB(255, 0, 230, 118),
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
                        child: const Icon(
                          Icons.monetization_on,
                          size: 32,
                          color: Color.fromARGB(255, 255, 179, 0),
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
                        child: const Icon(
                          Icons.apps,
                          size: 32,
                          color: Color.fromARGB(255, 117, 117, 117),
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
              ), // ElevatedButton
            ],
          ),
        ),
      ),
    );
  }
}