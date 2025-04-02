import 'package:componentes_5b/screens/first_screen.dart';
import 'package:componentes_5b/screens/third_screen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  var _selectedIndex = 1;

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
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.catching_pokemon),
            label: 'Ventana 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_front),
            label: 'Ventana 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.roller_shades_sharp),
            label: 'Ventana 3',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            setState(() {
              _selectedIndex = index;
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstScreen()),
              );
            });
          } else if (index == 1) {
            setState(() {
              _selectedIndex = index;
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondScreen()),
              );
            });
          } else if (index == 2) {
            setState(() {
              _selectedIndex = index;
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ThirdScreen()),
              );
            });
          }
        },
      ),
    );
  }
}
