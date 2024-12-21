import 'package:flutter/material.dart';
import 'package:spotify_app/constans.dart';

class Customtextformfield extends StatelessWidget {
  const Customtextformfield({
    super.key,
    required this.hintText,
    this.validator,
    this.onSave,
    this.obscureText = false,
    this.keyboardType,
    this.PrefIcon,
    this.TextColor,
    this.TextSize,
    this.SufIcon,
  });

  final String hintText;
  final String? Function(String? value)? validator;
  final FormFieldSetter? onSave;
  final Icon? PrefIcon;
  final Icon? SufIcon;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Color? TextColor;
  final double? TextSize;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: TextStyle(color: Constans.mainformFont),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 20, top: 74),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Constans.mainFontGreen)),
        hintText: hintText,
        hintStyle: TextStyle(color: TextColor, fontSize: TextSize),
        prefixIcon: PrefIcon,
        suffixIcon: SufIcon,
      ),
      validator: validator,
      onSaved: onSave,
      obscureText: obscureText,
      keyboardType: keyboardType,
    );
  }
}
