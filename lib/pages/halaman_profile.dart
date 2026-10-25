import 'package:flutter/material.dart';
import 'halaman_menu.dart';
import 'halaman_home.dart';

import 'profil_page.dart';

class halamanProfile extends StatefulWidget {
  const halamanProfile({super.key});

  @override
  State<halamanProfile> createState() => _halamanProfileState();
}

class _halamanProfileState extends State<halamanProfile> {
  int currentIndex = 0;

  final List<Widget> pages = const [
    HomePage(),
    HalamanProfile(),
    MenuPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NavigationBar'),
      ),
      body: pages[currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          NavigationDestination(
            icon: Icon(Icons.details),
            label: 'Detail',
          ),
        ],
      ),
    );
  }
}