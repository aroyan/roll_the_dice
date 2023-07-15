import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Roll the dice',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        body: const DiceRenderer(),
        appBar: AppBar(
          backgroundColor: Colors.red.shade500,
          centerTitle: true,
          title: const Text(
            'Roll the Dice',
          ),
        ),
      ),
    );
  }
}

class DiceRenderer extends StatefulWidget {
  const DiceRenderer({super.key});

  @override
  State<DiceRenderer> createState() => _DiceRendererState();
}

class _DiceRendererState extends State<DiceRenderer> {
  int leftDice = 1;
  int rightDice = 1;

  int generateRandom() {
    return Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$leftDice.png'),
              onPressed: () {
                setState(() {
                  leftDice = generateRandom();
                  // rightDice = generateRandom();
                });
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset('images/dice$rightDice.png'),
              onPressed: () {
                setState(() {
                  // leftDice = generateRandom();
                  rightDice = generateRandom();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
