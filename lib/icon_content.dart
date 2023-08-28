// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

const defaultInactiveGenderTextStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.w700,
  color: Color(0xFF5f4d3c),
);
const defaultSzedBoxHeight = 15.0;
const defaultIconHeight = 95.0;
const defaultIconColor = Color(0xffFAF7F5);

class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.gender});
  final IconData icon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: defaultIconHeight,
          color: defaultIconColor,
        ),
        SizedBox(
          height: defaultSzedBoxHeight,
        ),
        Text(gender.toUpperCase(), style: defaultInactiveGenderTextStyle)
      ],
    );
  }
}
