import 'package:componentes_5b/screens/second_screen.dart';
import 'package:componentes_5b/screens/third_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Segunda Ventana')),
      body: Center(
        child: Column(
          children: [
            Text('Dos imageness'),
            Image.asset('assets/img/img1.png', height: 300, width: 300),
            Text('Otra imagen'),
            Image.asset('assets/img/img2.png', height: 300, width: 300),
          ],
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
