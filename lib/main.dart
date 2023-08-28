import 'package:flutter/material.dart';
import 'package:imcerto/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IMCerto - Calculadora de IMC',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFFAF7F5),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Color(
              0xFF5f4d3c,
            ),
          ),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'IMCerto - Calculadora de IMC'),
    );
  }
}
