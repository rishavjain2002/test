import 'dart:math';
import 'package:app1/text.dart';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currDiceRoll = 2;

  void rolldice() {
    setState(() {
      currDiceRoll = Random().nextInt(6) + 1;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/dice/dice-$currDiceRoll.png',
          width: 200,
        ),
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            padding: const EdgeInsets.only(
              top: 20,
            ),
            textStyle: const TextStyle(
              fontSize: 30,
            ),
          ),
          child: const StyleText('Roll Dice'),
        )
      ],
    );
  }
}
