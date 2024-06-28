import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/app_colors.dart';

final appTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.primaryColorBeige,
    textTheme: TextTheme(
      bodySmall: GoogleFonts.poppins(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: GoogleFonts.poppins(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      bodyLarge: GoogleFonts.poppins(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      headlineMedium: GoogleFonts.poppins(
        color: Colors.black,
        fontSize: 22,
        fontWeight: FontWeight.w800,
      ),
    ),);
