import 'package:flutter/material.dart';
import 'package:app1/dice_roll.dart';
const startAlignement = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;



class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors,
      {super.key}); //const GradientContainer({super.key, required this.colors}) :using named arguments/parameters
  
  final List<Color> colors;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignement,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
