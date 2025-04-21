import 'package:flutter/material.dart';
import 'dart:math';

final random = Random();

class DiceRoller extends StatefulWidget {
  final Function(String) onDiceRolled;

  const DiceRoller({super.key, required this.onDiceRolled});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var list = [
    'dice-one.png',
    'dice-two.png',
    'dice-three.png',
    'dice-four.png',
    'dice-five.png',
    'dice-six.png',
  ];
  var activeImage = 'assets/images/dice-one.png';

  void rollDice() {
    var diceRoll = random.nextInt(list.length);
    setState(() {
      activeImage = 'assets/images/${list[diceRoll]}';
    });
    widget.onDiceRolled(activeImage);
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(activeImage, width: 200, height: 200),
        SizedBox(height: 40),
        OutlinedButton(
          onPressed: rollDice,
          style: OutlinedButton.styleFrom(
            minimumSize: Size(200, 50),
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            textStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Century',
            ),

            side: BorderSide(color: Colors.white, width: 3),
          ),
          child: Text('ROLL DICE'),
        ),
      ],
    );
  }
}
