// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class DefaultContainer extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  DefaultContainer({required this.selectedColor, this.childCard});
  final Color selectedColor;
  final Widget? childCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: selectedColor),
      child: childCard,
    );
  }
}
