import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tercera Ventana'),),
      body: Center(
        child: Column(
          children: [
            Text('Una imagen'),
            Image.asset('assets/img/img3.png'),
          ],
        ),
      ),
    );
  }
}
