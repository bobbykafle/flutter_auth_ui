// ignore: unused_import
import 'package:flutter/material.dart';

class Text_Theme{
  Text_Theme();


// custome for the lght mode 
static TextTheme lightTextTheme = TextTheme(
  headlineLarge: const TextStyle().copyWith(
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  ),
  headlineMedium: const TextStyle().copyWith(
    fontSize: 22.0,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  ),
   headlineSmall: const TextStyle().copyWith(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  ),

  titleLarge: const TextStyle().copyWith(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: Colors.black,
      ),
  titleMedium: const TextStyle().copyWith(
    fontSize: 15.0,
    fontWeight: FontWeight.w500,
    color: Colors.black,
      ),
  titleSmall: const TextStyle().copyWith(
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    color: Colors.black,
      ),

  bodyLarge: const TextStyle().copyWith(
    fontSize: 14.0,
     fontWeight: FontWeight.w500,
     color : Colors.black,
  ),
   bodyMedium: const TextStyle().copyWith(
    fontSize: 14.0,
     fontWeight: FontWeight.w500,
     color : Colors.black,
  ),
   bodySmall: const TextStyle().copyWith(
    fontSize: 14.0,
     fontWeight: FontWeight.w500,
     color : Colors.black,
  ),
  labelLarge: const TextStyle().copyWith(
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
    color: Colors.black, 
  ),
  labelMedium: const TextStyle().copyWith(
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  ),
);




//custome for darkmode 
static TextTheme darkTextTheme = TextTheme(
  headlineLarge: TextStyle().copyWith(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  ),
  headlineMedium: TextStyle().copyWith(
    fontSize: 22,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  ),
  headlineSmall: TextStyle().copyWith(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  ),
   titleLarge: const TextStyle().copyWith(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: Colors.white,
      ),
  titleMedium: const TextStyle().copyWith(
    fontSize: 15.0,
    fontWeight: FontWeight.w500,
    color: Colors.white,
      ),
  titleSmall: const TextStyle().copyWith(
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    color: Colors.white,
      ),

  bodyLarge: const TextStyle().copyWith(
    fontSize: 14.0,
     fontWeight: FontWeight.w500,
     color : Colors.white,
  ),
   bodyMedium: const TextStyle().copyWith(
    fontSize: 14.0,
     fontWeight: FontWeight.w500,
     color : Colors.white,
  ),
   bodySmall: const TextStyle().copyWith(
    fontSize: 14.0,
     fontWeight: FontWeight.w500,
     color : Colors.white,
  ),
  labelLarge: const TextStyle().copyWith(
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
    color: Colors.white, 
  ),
  labelMedium: const TextStyle().copyWith(
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  ),
); 

}