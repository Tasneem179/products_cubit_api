import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  final FontWeight? fontWeight;
  final double fontSize;
  final int? maxLines;
  final TextOverflow? overflow;
  final TextAlign? textAlign;
  final String? fontFamily;

  const CustomText(
      {Key? key,
        required this.text,
        required this.color,
        this.fontWeight,
        required this.fontSize,
        this.overflow,
        this.maxLines,
        this.textAlign,
        this.fontFamily
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
        overflow: overflow,
        fontFamily: fontFamily
      ),
      textAlign: textAlign,
    );
  }
}