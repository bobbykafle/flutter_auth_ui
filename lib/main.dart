import 'package:flutter/material.dart';
import 'package:first_project/change_password.dart';
import 'package:first_project/confirm_otp.dart';
import 'register.dart';
import 'login.dart';
import 'dashboard.dart';
import 'forget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your applicatiovn.
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(

      routes:{
        "/register" : (context) => MyRegister(),
        "/dashboard": (context) => Dashboard(),
        "/change_password" : (context) => Changepassword(),
        "/confirm_otp":(context) => ConfirmOtp(),
        "/login" : (context) => Login(),
        "/forget":(context) => myPasswordState(),
      },
    debugShowCheckedModeBanner: false,
    home: Login(),
    
    );
  }
}







