import 'package:flutter/material.dart';
import 'package:app1/gradient_container.dart';

//changig
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([Colors.purple, Colors.black]),
      ),
    ),
  );
}
