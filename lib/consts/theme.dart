import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static ThemeData themeData() {
    return ThemeData(
      // scaffoldBackgroundColor: const Color(0xFFF5F5F5),
      cardColor: const Color(0xFFFFFFFF),
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF6B39F4),
        primary: const Color(0xFF6B39F4),
        onPrimary: const Color.fromARGB(255, 191, 160, 250),
        secondary: const Color(0xFF6C3BE4),
        onSecondary: const Color(0xFFA3A8AC),
        tertiary: const Color(0x79E0E0ED),
        onTertiary: const Color(0xFF0F111D),
        surface: const Color(0xFFFFFFFF),
      ),
      textTheme: GoogleFonts.robotoTextTheme(),
    );
  }
}
