import 'package:flutter/material.dart';

class HalamanProfile extends StatelessWidget {
  const HalamanProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Icon(Icons.person, size: 120, color: Colors.blue),
            ),
            SizedBox(height: 30),
            Text('Nama', style: TextStyle(color: Colors.grey)),
            Text('Taufiq Mhafudin', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Text('NIM', style: TextStyle(color: Colors.grey)),
            Text('152024161', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Text('Program Studi', style: TextStyle(color: Colors.grey)),
            Text('Informatika', style: TextStyle(fontSize: 24)),
          ],
        ),
      ),
    );
  }
}