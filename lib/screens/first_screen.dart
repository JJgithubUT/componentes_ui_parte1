import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Segunda Ventana'),),
      body: Center(
        child: Column(
          children: [
            Text('Dos imageness'),
            Image.asset(
              'assets/img/img1.png',
              height: 300,
              width: 300,
            ),
            Text('Otra imagen'),
            Image.asset(
              'assets/img/img2.png',
              height: 300,
              width: 300,
            ),
          ],
        ),
      ),
    );
  }
}
