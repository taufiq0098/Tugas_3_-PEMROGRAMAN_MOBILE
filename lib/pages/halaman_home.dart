import 'package:flutter/material.dart';
import 'halaman_menu.dart';
import 'halaman_profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ), // BoxDecoration
              child: Row(
                children: [
                  Icon(Icons.add_circle, size: 40, color: Colors.blue),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Tambah akun", style: TextStyle(fontSize: 24)),
                        Text("Tambahkan akun"),
                      ],
                    ), // Column
                  ), // Expanded
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
              ), // BoxDecoration
              child: Row(
                children: [
                  Icon(Icons.book, size: 40, color: Colors.blue),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Tambah buku", style: TextStyle(fontSize: 24)),
                        Text("Tambahkan buku"),
                      ],
                    ), // Column
                  ), // Expanded
                  Icon(Icons.arrow_forward_ios),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuPage()),
                );
              },
              child: const Text('Pindah halaman'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const halamanProfile()),
                );
              },
              child: const Text('Halaman profile'), 
            ) // ElevatedButton
          ],
        ), // Column
      ), // Center
    ); // Scaffold
  }
}