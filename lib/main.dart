
import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const RestoRipaCantik());
}

class RestoRipaCantik extends StatelessWidget {
  const RestoRipaCantik({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resto Ripa Cantik',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFFF5FAFF),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2563A6),
          primary: const Color(0xFF2563A6),
          secondary: const Color(0xFF77B5E8),
          surface: Colors.white,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFF5FAFF),
          foregroundColor: Color(0xFF17324F),
          elevation: 0,
        ),
        fontFamily: 'Roboto',
      ),
      home: const HomePage(),
    );
  }
}
