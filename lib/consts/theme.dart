import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static ThemeData themeData(BuildContext context) {
    return ThemeData(
      colorScheme: ThemeData().colorScheme.copyWith(
            primary: const Color.fromRGBO(107, 57, 244, 1),
            onPrimary: const Color.fromRGBO(201, 174, 251, 1),
            secondary: const Color.fromRGBO(108, 59, 228, 1),
            onSecondary: const Color.fromARGB(255, 163, 168, 172),
            tertiary: const Color.fromARGB(121, 224, 224, 237),
            onTertiary: const Color.fromRGBO(15, 17, 29, 1),
            surface: Colors.white,
          ),
      textTheme: GoogleFonts.robotoTextTheme(),
    );
  }
}
