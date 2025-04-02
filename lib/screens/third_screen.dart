import 'package:componentes_5b/models/ventas_model.dart';
import 'package:componentes_5b/screens/first_screen.dart';
import 'package:componentes_5b/screens/second_screen.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  int _selectedIndex = 2;
  final List<VentasModel> data = [
    VentasModel('Lunes', 75),
    VentasModel('Martes', 60),
    VentasModel('Miércoles', 85),
    VentasModel('Jueves', 90),
    VentasModel('Viernes', 70),
    VentasModel('Sábado', 95),
    VentasModel('Domingo', 80),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tercera Ventana')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BarChart(
          BarChartData(
            alignment: BarChartAlignment.spaceAround,
            maxY:
                data
                    .map((venta) => venta.venta)
                    .reduce((a, b) => a > b ? a : b) +
                10,
            barTouchData: BarTouchData(enabled: true),
            titlesData: FlTitlesData(
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  interval: 10,
                  reservedSize: 40,
                  getTitlesWidget: (value, meta) {
                    return Text(
                      value.toInt().toString(),
                      style: const TextStyle(color: Colors.black),
                    );
                  },
                ),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 30,
                  getTitlesWidget: (value, meta) {
                    if (value.toInt() < data.length) {
                      return Text(data[value.toInt()].dia);
                    }
                    return const Text('');
                  },
                ),
              ),
            ),
            borderData: FlBorderData(show: false),
            barGroups:
                data
                    .asMap()
                    .entries
                    .map(
                      (entry) => BarChartGroupData(
                        x: entry.key,
                        barRods: [
                          BarChartRodData(
                            toY: entry.value.venta.toDouble(),
                            color: const Color.fromARGB(255, 78, 188, 131),
                          ),
                        ],
                      ),
                    )
                    .toList(),
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
