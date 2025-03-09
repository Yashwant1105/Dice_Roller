import 'package:flutter/material.dart';
import 'package:first_app/grad_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Roller',
      theme: ThemeData(useMaterial3: true),
      home: const GradContainer(
          Colors.purple, Colors.purpleAccent, Colors.deepPurple),
    );
  }
}
