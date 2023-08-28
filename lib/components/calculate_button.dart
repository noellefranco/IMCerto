// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:imcerto/globals.dart';

class CalculateButton extends StatelessWidget {
  CalculateButton({required this.onClick, required this.buttonText});

  final Function onClick;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onClick();
      },
      child: Container(
        color: kCalculateFooter,
        margin: const EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: 80.0,
        child: Center(
          child: Text(
            buttonText.toUpperCase(),
            style: kCalculateButtonStyle,
          ),
        ),
      ),
    );
  }
}
