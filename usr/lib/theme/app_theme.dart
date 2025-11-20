import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Colors from specification
  static const Color primaryColor = Color(0xFF0056B3); // Bleu UE
  static const Color secondaryColor = Color(0xFF00B4D8); // Bleu Tunisie
  static const Color accentColor = Color(0xFFFFC107);
  static const Color errorColor = Color(0xFFD32F2F);
  static const Color successColor = Color(0xFF388E3C);
  
  static const Color backgroundLight = Color(0xFFF5F7FA);
  static const Color surfaceWhite = Colors.white;

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        primary: primaryColor,
        secondary: secondaryColor,
        background: backgroundLight,
        surface: surfaceWhite,
        error: errorColor,
      ),
      scaffoldBackgroundColor: backgroundLight,
      textTheme: GoogleFonts.interTextTheme(),
      appBarTheme: const AppBarTheme(
        backgroundColor: surfaceWhite,
        foregroundColor: Colors.black87,
        elevation: 0,
        centerTitle: false,
      ),
      cardTheme: CardTheme(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        color: surfaceWhite,
      ),
      navigationRailTheme: NavigationRailThemeData(
        backgroundColor: surfaceWhite,
        selectedIconTheme: const IconThemeData(color: primaryColor),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        labelType: NavigationRailLabelType.all,
        selectedLabelTextStyle: GoogleFonts.inter(
          color: primaryColor,
          fontWeight: FontWeight.w600,
        ),
        unselectedLabelTextStyle: GoogleFonts.inter(
          color: Colors.grey,
        ),
      ),
    );
  }
}
