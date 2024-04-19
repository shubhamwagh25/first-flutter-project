import 'package:flutter/material.dart';
import 'dart:math';

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  var activeimage = 'Assets/dice-1.png';
  void onClick() {
    setState(() {
      var diceroll = Random().nextInt(6) + 1;
      activeimage = 'Assets/dice-$diceroll.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(
            activeimage,
            width: 200,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: onClick,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text("Click to Roll"),
        )
      ],
    );
  }
}
