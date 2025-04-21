import 'package:flutter/material.dart';
import 'dice_roller.dart';
import 'last_dices.dart';

class GradientContainer extends StatefulWidget {
  const GradientContainer({super.key});

  @override
  _GradientContainerState createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  List<String> diceImages = ['assets/images/dice-one.png'];

  void _updateDiceImage(String newImage) {
    setState(() {
      diceImages.insert(0, newImage);
      if (diceImages.length > 10) {
        diceImages.removeLast();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 12, 0, 53),
              Color.fromARGB(255, 0, 0, 0),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                DiceRoller(onDiceRolled: _updateDiceImage),
                const SizedBox(height: 30),
                const Text(
                  'Last 10 Dice',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                SizedBox(height: 170, child: LastDices(diceImages: diceImages)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
