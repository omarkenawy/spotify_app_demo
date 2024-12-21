import 'package:flutter/material.dart';
import 'package:spotify_app/constans.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.buttomName,
    this.fontSize,
    this.wsize,
    this.hsize,
    required this.buttonColor,
  });
  final String? buttomName;
  final double? fontSize;
  final double? wsize;
  final double? hsize;
  final Color? buttonColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          textAlign: TextAlign.center,
          "$buttomName",
          style: TextStyle(
              fontSize: fontSize,
              color: Constans.mianFontWhite,
              fontWeight: FontWeight.bold),
        ),
      ),
      width: wsize,
      height: hsize,
      decoration: BoxDecoration(
          color: buttonColor, borderRadius: BorderRadius.circular(20)),
    );
  }
}
