import 'package:flutter/material.dart';
import 'package:widgetpresentation/screens/logic/random_number.dart';

class RollDiceScreen extends StatefulWidget {
  const RollDiceScreen({super.key});

  @override
  State<RollDiceScreen> createState() => _RollDiceScreenState();
}

class _RollDiceScreenState extends State<RollDiceScreen> {
  int diceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Let"s play',
              style: TextStyle(color: Colors.amberAccent, fontSize: 24),
            ),
            Image.asset('assets/$diceNumber.jpg', width: 100, height: 100),
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
              ),
              onPressed: () {
                setState(() {
                  diceNumber = randomNumber();
                });
              },
              child: Text(
                'Roll dice',
                style: TextStyle(color: Colors.amber, fontSize: 16),
              ),
            ),
            Icon(Icons.cake, color: Colors.red, size: 100),
          ],
        ),
      ),
    );
  }
}
