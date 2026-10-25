import 'package:flutter/material.dart';

class HalamanRiwayat extends StatelessWidget {
  const HalamanRiwayat({super.key});

@override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.history, size: 100, color: Colors.grey),
          SizedBox(height: 16),
          Text(
            'Halaman Riwayat Transaksi',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
        ],
      ),
    );
  }
}