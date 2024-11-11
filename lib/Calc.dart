import 'package:flutter/material.dart';

class Calc extends StatefulWidget {
  const Calc({super.key});

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  double num1 = 0;
  double num2 = 0; 
  double output = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // First Number Input
            TextField(
              onChanged: (value) {
                setState(() {
                  num1 = double.tryParse(value) ?? 0;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Num1',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // Second Number Input
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  num2 = double.tryParse(value) ?? 0;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Num2',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // Operation Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      output = (num1 + num2).toDouble();
                    });
                  },
                  child: const Text('+'),
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      output = (num1 - num2).toDouble();
                    });
                  },
                  child: const Text('-'),
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      output = (num1 * num2).toDouble();
                    });
                  },
                  child: const Text('*'),
                ),
                OutlinedButton(
                  onPressed: () {
                    setState(() {
                      // Handle division by zero
                      if (num2 != 0) {
                        output = num1 / num2;
                      } else {
                        output = double.infinity; // Display "∞" if dividing by zero
                      }
                    });
                  },
                  child: const Text('/'),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Displaying the Output
            Text(
              'Output: $output',
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
