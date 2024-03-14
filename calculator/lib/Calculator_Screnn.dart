import 'dart:html';

import 'package:calculator/button_values.dart';
import 'package:flutter/material.dart';



class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            // Output Display
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    "0",
                    style: const TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),
            ),

            // Buttons or Other Widgets
            Wrap(
              children: Btn.buttonValues
              .map((value) => SizedBox(
                width: screenSize.width/4,
                height:screenSize.width/5 ,
                child: buildButton(value),
              ),
              )
              .toList(),
            )
          ],
        ),
      ),
    );
  }

  Widget buildButton(String value) {
  return Text(value);
}
}
