import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
  static ThemeData themeData(BuildContext context) {
    return ThemeData(
      colorScheme: ThemeData().colorScheme.copyWith(
            primary: const Color.fromRGBO(107, 57, 244, 1),
            secondary: const Color.fromRGBO(201, 174, 251, 1),
            tertiary: const Color.fromRGBO(108, 59, 228, 1),
            background: const Color.fromRGBO(248, 249, 253, 1),
          ),
      textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
    );
  }
}
