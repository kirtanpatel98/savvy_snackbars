import 'package:custom_snacks/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SavvySnacks(),
    );
  }
}

class SavvySnacks extends StatelessWidget {
  const SavvySnacks({super.key});

  @override
  Widget build(BuildContext context) {
    return const Homepage();
  }
}
