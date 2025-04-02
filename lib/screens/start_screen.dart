import 'package:componentes_5b/screens/first_screen.dart';
import 'package:componentes_5b/screens/second_screen.dart';
import 'package:componentes_5b/screens/third_screen.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  // ignore: prefer_final_fields
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('App de componentes de UI')),
      body: Center(child: Text('Ventana inicial')),
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
          if ( index == 0 ) {
            setState(() {
              _selectedIndex = index;
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FirstScreen()),
              );
            });
          } else if ( index == 1 ) {
            setState(() {
              _selectedIndex = index;
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondScreen()),
              );
            });
          } else if( index == 2) {
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