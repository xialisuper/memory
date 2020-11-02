import 'package:flutter/material.dart';
import 'package:memory/screens/screens.dart';

void main() {
  runApp(MemoryApp());
}

class MemoryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavScreen(),
    );
  }
}
