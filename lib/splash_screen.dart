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
      if (!mounted) return;
      // Gunakan pushNamed dulu untuk debugging agar stack tidak kosong
      Navigator.of(context).pushNamed('/auth');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Hapus 'const' di sini karena children memiliki Image.asset
      backgroundColor: const Color(0xFFFCE4EC), // Pink muda
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png', 
              height: 80, 
            ),
          ],
        ),
      ),
    );
  }
}