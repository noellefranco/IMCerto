// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'globals.dart';

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
          size: kDefaultIconHeight,
          color: kDefaultIconColor,
        ),
        SizedBox(
          height: kDfaultSzedBoxHeight,
        ),
        Text(gender.toUpperCase(), style: kDefaultTextStyle)
      ],
    );
  }
}
