import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Boldtext extends StatefulWidget {
  double? size;
  final String font;
  final String text;
  final Color? color;
  final TextAlign? align;
  TextOverflow textOverflow ;

  Boldtext({
    super.key,
    this.size=20,
    this.font="font30",
    this.color,
    this.align,
    this.textOverflow = TextOverflow.ellipsis,
    required this.text,
     
    });

  @override
  State<Boldtext> createState() => _BoldtextState();
}

class _BoldtextState extends State<Boldtext> {
  @override
  Widget build(BuildContext context) {
    return Text(
      overflow: widget.textOverflow,
      widget.text,
      textAlign: widget.align,
      style:
      TextStyle(
        fontSize: widget.size,
        color: widget.color,
        fontWeight: FontWeight.bold,
        fontFamily: widget.font,
      ),
    );
  }
}
