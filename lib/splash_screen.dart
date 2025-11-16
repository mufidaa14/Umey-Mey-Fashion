import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Pindah ke layar otentikasi setelah 3 detik
    Future.delayed(const Duration(seconds: 3), () {
      // Pastikan rute '/auth' sudah dideklarasikan di main.dart
      Navigator.of(context).pushReplacementNamed('/auth');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Hapus 'const' di sini karena children memiliki Image.asset
      backgroundColor: const Color(0xFFFCE4EC), // Pink muda
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // HAPUS KATA KUNCI 'const' di depan Image.asset!
            // Menggunakan path 'assets/logo.png' sesuai struktur folder Anda.
            Image.asset(
              'assets/logo.png', 
              height: 100, // Sesuaikan ukuran sesuai kebutuhan
            ),
            
            const SizedBox(height: 10), // Ini boleh const
            const Text(
              'Umey mey \nFASHION',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFFF06292), // Warna pink yang kuat
                fontFamily: 'Montserrat', // Contoh font
              ),
            ),
          ],
        ),
      ),
    );
  }
}