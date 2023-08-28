// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:imcerto/components/calculate_button.dart';
import 'package:imcerto/components/default_card.dart';
import 'package:imcerto/components/icon_content.dart';
import 'package:imcerto/components/rounded_buttons.dart';
import 'package:imcerto/globals.dart';
import 'result_screen.dart';

enum Sex {
  masc,
  fem,
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Sex? selectedGender;
  int userHeight = 180;
  int userWeight = 70;
  int userAge = 18;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IMCerto - Cálculo de IMC'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: DefaultContainer(
                    handleTap: () {
                      setState(() {
                        selectedGender = Sex.masc;
                      });
                    },
                    selectedColor: selectedGender == Sex.masc
                        ? kActiveCardDefaultColor
                        : kInactiveCardDefaultColor,
                    childCard: IconContent(
                      icon: FontAwesomeIcons.mars,
                      gender: 'homem',
                    ),
                  ),
                ),
                Expanded(
                  child: DefaultContainer(
                    handleTap: () {
                      setState(() {
                        selectedGender = Sex.fem;
                      });
                    },
                    selectedColor: selectedGender == Sex.fem
                        ? kActiveCardDefaultColor
                        : kInactiveCardDefaultColor,
                    childCard: IconContent(
                      icon: FontAwesomeIcons.venus,
                      gender: 'mulher',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: DefaultContainer(
              selectedColor: kActiveCardDefaultColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'altura'.toUpperCase(),
                    style: kDefaultTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(userHeight.toString(), style: kNumTextStyle),
                      Text(
                        'cm'.toLowerCase(),
                        style: kDefaultTextStyle,
                      )
                    ],
                  ),
                  Slider(
                    activeColor: kCalculateFooter,
                    inactiveColor: Color(0xffeee4de),
                    onChanged: (double newValue) {
                      setState(() {
                        userHeight = newValue.round();
                      });
                    },
                    value: userHeight.toDouble(),
                    min: 120.0,
                    max: 220.0,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: DefaultContainer(
                    selectedColor: kActiveCardDefaultColor,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'PESO (kg)',
                          style: kDefaultTextStyle,
                        ),
                        Text(
                          userWeight.toString(),
                          style: kNumTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedButton(
                              icon: FontAwesomeIcons.minus,
                              handlePressed: () {
                                setState(() {
                                  userWeight--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundedButton(
                              icon: FontAwesomeIcons.plus,
                              handlePressed: () {
                                setState(() {
                                  userWeight++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: DefaultContainer(
                    selectedColor: kActiveCardDefaultColor,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'idade'.toUpperCase(),
                          style: kDefaultTextStyle,
                        ),
                        Text(
                          userAge.toString(),
                          style: kNumTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedButton(
                              icon: FontAwesomeIcons.minus,
                              handlePressed: () {
                                setState(() {
                                  userAge--;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundedButton(
                              icon: FontAwesomeIcons.plus,
                              handlePressed: () {
                                setState(() {
                                  userAge++;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          CalculateButton(
            buttonText: 'calcular',
            onClick: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}