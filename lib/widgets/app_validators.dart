// ignore: unused_import
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:first_project/widgets/snackbar_helper.dart';


class Appvalidaors {
  static String? empty(String? value, String fieldName){
    if(value == null || value.trim().isEmpty){
      return "$fieldName is  required";
    }
    return null;
  }


  static String? email (String? value){
    if (value == null || value.trim().isEmpty){
      return "Email is required";
    }
    // ignore: non_constant_identifier_names
    final Pattern = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!Pattern.hasMatch(value)){
      return "Invalide email formate";
    }
    return null;
  }

  // ignore: non_constant_identifier_names
  static String? StrongPassword(String? value){
     final pass = value ?? "";
     final Pattern = RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[\W_]).{8,}$');
      
      if (!Pattern.hasMatch(pass)){
        return "Password must contain A_Z, a-z, 0-9, special character";
      }
      return null ;
  }
  
  static String? matchPassword (String? pass, String? confirmPass){
    if (pass != confirmPass){
      return "Password do not match";
    }
    return null;
  }
}
