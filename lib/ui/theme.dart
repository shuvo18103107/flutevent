// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

const Color purpleClr = Color(0xFFA0338A);
const Color bluishClr = Color(0xFF4e5ae8);
const Color yellowClr = Color(0xFFFFB746);
const Color pinkClr = Color(0xFFF54B80);
const Color darkGreyClr = Color.fromARGB(255, 24, 23, 23);
const Color darkHeaderClr = Color(0xFF424242);
const primaryClr = bluishClr;

class Themes {
  // ignore:implicit_this_reference_in_initializer, unused_field
  static final light = ThemeData(
      backgroundColor: Colors.white,
//ignore: undefined_named_parameter
      primaryColor: Colors.white,
      brightness: Brightness.light);
  // ignore:implicit_this_reference_in_initializer, unused_field, prefer_typing_uninitialized_variables
  static final dark = ThemeData(
      backgroundColor: darkGreyClr,
      primaryColor: darkGreyClr,
      brightness: Brightness.dark);
}
//we use get means it return something

TextStyle get subHeadingStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Get.isDarkMode ? Colors.grey[400] : Colors.grey));
}

TextStyle get headingStyle {
  return GoogleFonts.lato(
      textStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Get.isDarkMode ? Colors.white : Colors.black));
}

TextStyle get titleStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Get.isDarkMode ? Colors.white : Colors.black),
  );
}

TextStyle get subTitleStyle {
  return GoogleFonts.lato(
    textStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Get.isDarkMode ? Colors.grey[100] : Colors.grey[600]),
  );
}
