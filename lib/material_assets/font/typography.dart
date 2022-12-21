import 'package:flutter/cupertino.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

class Typograph {
  // font dibuat untuk title dari aplikasi
  static final title = GoogleFonts.bebasNeue().copyWith(fontSize: 64.0);

  // font heading (bold)
  static final boldLarge = GoogleFonts.poppins()
      .copyWith(fontSize: 20.0, fontWeight: FontWeight.w900);

  static final semiBoldLarge = GoogleFonts.poppins()
      .copyWith(fontSize: 24.0, fontWeight: FontWeight.bold);

  static final semiBoldMedium = GoogleFonts.poppins()
      .copyWith(fontSize: 20.0, fontWeight: FontWeight.w700);

  static final semiBoldSmall = GoogleFonts.poppins()
      .copyWith(fontSize: 15.0, fontWeight: FontWeight.bold);

  // font untuk reguler
  static final regulerLarge = GoogleFonts.poppins()
      .copyWith(fontSize: 24.0, fontWeight: FontWeight.w400);

  static final regulerMedium = GoogleFonts.poppins()
      .copyWith(fontSize: 16.0, fontWeight: FontWeight.w400);

  static final regulerSmall = GoogleFonts.poppins()
      .copyWith(fontSize: 14.0, fontWeight: FontWeight.w400);

  //font untuk huruf italic
  static final regulerItalic = GoogleFonts.poppins().copyWith(
      fontSize: 12.0, fontWeight: FontWeight.w400, fontStyle: FontStyle.italic);

  //font untuk button
  static final txtButton = GoogleFonts.poppins()
      .copyWith(fontSize: 24.0, fontWeight: FontWeight.w400);
}
