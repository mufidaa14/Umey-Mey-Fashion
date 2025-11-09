import 'package:flutter/material.dart';
import '../pages/home.dart';
import '../pages/data_pesanan.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  const BottomNavBar({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: (index) {
        if (index == 0) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const DataPesananPage()),
          );
        } else if (index == 1) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        }
      },
      selectedItemColor: Colors.pink[300],
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.list_alt),
          label: 'Daftar Pesanan',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profil',
        ),
      ],
    );
  }
}
