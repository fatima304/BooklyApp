import 'package:bookly_app/core/utlis/style.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.color,
      required this.radius, required this.textcolor});

  final String text;
  final Color color;
  final Color textcolor;

  final BorderRadius radius;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: radius,
        ),
      ),
      onPressed: null,
      child: Text(
        text,
        style: Styles.textStyle18.copyWith(
          color: textcolor,
        ),
      ),
    );
  }
}
