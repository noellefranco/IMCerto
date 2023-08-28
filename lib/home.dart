// ignore_for_file: use_key_in_widget_constructors, must_be_immutable, prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'default_card.dart';
import 'icon_content.dart';

const activeCardDefaultColor = Color(0xffFA5200);
const footerColor = Color(0xFF5f4d3c);
const inactiveCardDefaultColor = Color(0xffEEE4DE);
const defaultActiveGenderTextStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.w700,
  color: Color(0xFF23282D),
);

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
                        ? activeCardDefaultColor
                        : inactiveCardDefaultColor,
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
                        ? activeCardDefaultColor
                        : inactiveCardDefaultColor,
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
            child: DefaultContainer(selectedColor: activeCardDefaultColor),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child:
                      DefaultContainer(selectedColor: activeCardDefaultColor),
                ),
                Expanded(
                  child:
                      DefaultContainer(selectedColor: activeCardDefaultColor),
                ),
              ],
            ),
          ),
          Container(
            color: footerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
          )
        ],
      ),
    );
  }
}
