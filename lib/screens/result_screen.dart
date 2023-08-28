// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:imcerto/components/calculate_button.dart';
import 'package:imcerto/components/default_card.dart';
import 'package:imcerto/globals.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(
      {required this.bmiDescription,
      required this.bmiResult,
      required this.bmiText});

  final String bmiResult;
  final String bmiText;
  final String bmiDescription;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IMCerto - Cálculo de IMC'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'resultado'.toUpperCase(),
                style: kResultPageTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: DefaultContainer(
              selectedColor: kActiveCardDefaultColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiText,
                    style: kBMIResultsTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMIResultsNumTextStyle,
                  ),
                  Text(bmiDescription,
                      textAlign: TextAlign.center,
                      style: kBMIResultDescriptionTextStyle),
                ],
              ),
            ),
          ),
          CalculateButton(
              onClick: () {
                Navigator.pop(context);
              },
              buttonText: 'recalcular')
        ],
      ),
    );
  }
}
