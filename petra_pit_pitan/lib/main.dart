import 'package:flutter/material.dart';
import 'package:petra_pit_pitan/login.dart';
import 'package:petra_pit_pitan/screen/admin/beranda.dart';
import 'package:petra_pit_pitan/screen/admin/detailPeminjaman.dart';
import 'package:petra_pit_pitan/screen/admin/history.dart';
import 'package:petra_pit_pitan/screen/admin/navbar.dart';
import 'package:petra_pit_pitan/screen/user/navbar.dart';
import 'package:petra_pit_pitan/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const loginPage(),
        '/beranda': (context) => const berandaPage(),
        '/test': (context) => const MyWidget(),
        '/DetailPeminjaman': (context) => const detailPeminjamanPage(),
        '/history': (context) => const historyPage(),
        '/testing': (context) => const historyPage(),
        '/detailPeminjaman': (context) => const detailPeminjamanPage(),
        '/navbarUser': (context) => const navbarUserPage(),
      },
    );
  }
}
