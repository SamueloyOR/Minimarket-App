import 'package:flutter/material.dart';
import 'package:minimarket_app/Screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';


void main() => runApp(const MinimarketApp());

class MinimarketApp extends StatelessWidget {
  const MinimarketApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.plusJakartaSans().fontFamily
        ),
      home: HomeScreen(),
    );
  }
}
