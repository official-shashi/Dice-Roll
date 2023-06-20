import 'dart:math';

import 'package:flutter/material.dart';

final random = Random();

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {

var currentDiceRoll = 2;

void rollDice() {
  setState(() {
   currentDiceRoll = random.nextInt(6) + 1; 
  });
  
}

  @override
  Widget build(BuildContext context) {
    return  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Image.asset('assets/images/dice-$currentDiceRoll.png',width: 200,),
          const SizedBox(height: 20,),
          ElevatedButton(
            onPressed: rollDice,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
            child: const Text('Roll Dice',
            style: TextStyle(fontSize: 18,color: Colors.white),),
          )
        ]);
  }
}