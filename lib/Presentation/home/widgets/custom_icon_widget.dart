import 'package:flutter/material.dart';
import 'package:netflix_cpy/Core/colors.dart';

class CustomButtonWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  const CustomButtonWidget({
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
        ),
        Text(
          title,
          style: TextStyle(fontSize: 14),
        )
      ],
    );
  }
}
