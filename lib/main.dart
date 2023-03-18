import 'package:flutter/material.dart';
import 'package:natv_app/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFF1F1F1),
          hintColor: const Color(0xFFC0C0C0)),
      home: const HomePage(),
    );
  }
}
