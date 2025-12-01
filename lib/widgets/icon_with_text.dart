// ignore_for_file: unused_import, unnecessary_import

import 'package:flutter/material.dart';
import 'package:first_project/widgets/bold_text.dart';

// ignore: must_be_immutable
class Iconwithtext extends StatelessWidget {
  String text;
  final IconData icon;
  final Color? colorText;
  final Color?colorIcon;
  final  double sizeText;
  final  double sizeIcon;


  Iconwithtext({
    super.key,
    this.colorText= Colors.black,
    required this.icon,
    this.colorIcon = Colors.black,
    this.sizeText = 10,
    this.sizeIcon = 10,
    required this.text,
    });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
     children: [
      Icon(
        icon,
        color:colorIcon,
        size:sizeIcon,
      ),
       SizedBox(
        width:5,
       ),
       Opacity(
        opacity: 0.5,
         child: Boldtext(
          size: sizeText,
          text:text,
          color: colorText,
         
         
         ),
       ),
     ],
    );
  }
}
