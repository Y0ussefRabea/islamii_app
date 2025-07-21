import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyles {
  static TextStyle bold16White = GoogleFonts.elMessiri(
    fontWeight: FontWeight.bold,
    color: AppColors.offwhiteColor,
    fontSize: 16,
  );
  static TextStyle bold24Black = GoogleFonts.elMessiri(
    fontWeight: FontWeight.bold,
    color: AppColors.blackColor,
    fontSize: 22,
  );
  static TextStyle bold14Black = GoogleFonts.elMessiri(
    fontWeight: FontWeight.bold,
    color: AppColors.blackColor,
    fontSize: 14,
  );
  static TextStyle bold20White = GoogleFonts.elMessiri(
    fontWeight: FontWeight.bold,
    color: AppColors.whiteColor,
    fontSize: 20,
  );
}
