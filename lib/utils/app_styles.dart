import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

class AppTextStyles {
  static TextStyle header1 = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w700,
    color: AppColors.lightgrey,
  );
  static TextStyle child1 = GoogleFonts.poppins(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );
  static TextStyle header2 = GoogleFonts.poppins(
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: AppColors.darkgrey,
  );
  static TextStyle hearderBold = GoogleFonts.poppins(
    color: AppColors.black,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );
  static TextStyle bodyText = GoogleFonts.poppins(
    color: AppColors.black,
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );
}
