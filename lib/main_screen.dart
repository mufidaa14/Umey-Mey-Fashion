import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'daftar_pesanan_screen.dart';
import 'profil_screen.dart'; // Anggap ada halaman Profil

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 1; // Default ke 'Home'

  final List<Widget> _widgetOptions = <Widget>[
    const DaftarPesananScreen(),
    const HomeScreen(),
    const ProfileScreen(), // Buat file ini (atau gunakan placeholder)
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Pastikan Anda sudah mengganti rute di main.dart, misalnya:
    // routes: {
    //   '/': (context) => const SplashScreen(),
    //   '/auth': (context) => const AuthScreen(),
    //   '/main': (context) => const MainScreen(), // Tambahkan ini
    // },
    // Dan arahkan navigasi dari AuthScreen ke '/main' saat login sukses.
    
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
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
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFFF06292), // Pink yang kuat
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed, // Penting agar icon tetap
      ),
    );
  }
}

// Placeholder untuk ProfileScreen
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Halaman Profil'));
  }
}