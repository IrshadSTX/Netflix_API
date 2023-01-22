import 'package:flutter/material.dart';
import 'package:netflix_cpy/Core/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final double iconSize;
  final double fontSize;
  final String title;
  final IconData icon;
  const CustomButtonWidget({
    this.iconSize = 30,
    this.fontSize = 14,
    required this.title,
    required this.icon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kWhiteColor,
          size: iconSize,
        ),
        Text(
          title,
          style: TextStyle(fontSize: fontSize),
        )
      ],
    );
  }
}
