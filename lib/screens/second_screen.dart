import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Segunda Ventana')),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text('Una imagen de la red'),
              Image.network(
                'https://images7.memedroid.com/images/UPLOADED583/613a2d2119f4f.jpeg',
                fit: BoxFit.cover,
                loadingBuilder: (context, child, progress) {
                  if (progress == null) return child;
                  return const CircularProgressIndicator();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
