import 'package:flutter/material.dart';
import 'package:first_project/widgets/custom_theme.dart';

class app_Theme{
  app_Theme();
}
 ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'poppins',
  brightness: Brightness.light,
 colorScheme: ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 10, 48, 79),
  brightness: Brightness.light,
 ),


textTheme: Text_Theme.lightTextTheme ,
 
);
ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  fontFamily: 'poppins',
  brightness: Brightness.dark,
  colorScheme: ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 10, 48, 79),
  brightness: Brightness.dark,
 ), 
textTheme: Text_Theme.darkTextTheme ,
);