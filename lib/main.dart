import 'package:componentes_5b/screens/start_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de componentes de UI',
      debugShowCheckedModeBanner: false,
      home: const StartScreen(),
    );
  }
}
