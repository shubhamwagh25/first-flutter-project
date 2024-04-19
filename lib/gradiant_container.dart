import 'package:flutter/material.dart';
import 'package:flutter_app_demo/roll_dice.dart';

class GrediantContainer extends StatelessWidget {
  const GrediantContainer(this.color1, this.color2, {super.key});
  const GrediantContainer.purple({super.key})
      : color1 = const Color.fromARGB(255, 79, 45, 202),
        color2 = const Color.fromARGB(255, 168, 26, 45);
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: const RollDice());
  }
}
