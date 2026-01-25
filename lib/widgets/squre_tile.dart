import 'package:flutter/material.dart';
class SqureTile  extends StatelessWidget {
  final String imagePath;
  const SqureTile ({
    super.key,
    required this.imagePath,});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),

        child: Image.asset(
          imagePath,
          height: 40,
        ),




      
    );
  }
}