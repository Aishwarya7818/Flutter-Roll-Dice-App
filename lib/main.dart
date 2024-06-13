import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(255, 95, 190, 22),
            Color.fromARGB(255, 83, 18, 111),
            Color.fromARGB(255, 108, 34, 140)),
      ),
    ),
  );
}
