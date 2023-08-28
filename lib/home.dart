// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'default_card.dart';
import 'icon_content.dart';
import 'globals.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IMCerto - Cálculo de IMC'),
      ),
      body: Column(
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
                children: [Text('altura')],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child:
                      DefaultContainer(selectedColor: kActiveCardDefaultColor),
                ),
                Expanded(
                  child:
                      DefaultContainer(selectedColor: kActiveCardDefaultColor),
                ),
              ],
            ),
          ),
          Container(
            color: kFoterColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
          )
        ],
      ),
    );
  }
}
