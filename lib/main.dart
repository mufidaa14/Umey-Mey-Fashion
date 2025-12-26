import 'package:flutter/material.dart';
import 'splash_screen.dart' as app_splash; // <-- PERUBAHAN DI SINI
import 'auth_screen.dart';
import 'main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Umey Mey Fashion',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFF06292)), // Warna pink yang mirip
        useMaterial3: true,
      ),
      // initialRoute: '/', // Hapus ini atau komentar
      home: const app_splash.SplashScreen(), // Gunakan home untuk rute awal
      routes: {
        // '/': (context) => const app_splash.SplashScreen(), // Hapus atau komentar definisi '/'
        '/auth': (context) => const AuthScreen(),
        '/main': (context) => const MainScreen(),
      },
    );
  }
}