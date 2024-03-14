import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        bottom: false,
        child: (Column(
        children: [//output
        Text("0", style: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.end,
        )
        ],
      ))),
    );
  }
}