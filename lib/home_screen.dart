import 'package:flutter/material.dart';
import 'result_screen.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _foodChoice = 'Mixed';
  double _transportKm = 0;
  double _energyKwh = 0;

  final List<String> foodOptions = ['Vegan', 'Vegetarian', 'Mixed', 'Meat-heavy'];

  void _calculateFootprint() {
    double foodFactor = {
      'Vegan': 1.0,
      'Vegetarian': 1.5,
      'Mixed': 2.0,
      'Meat-heavy': 3.0,
    }[_foodChoice]!;

    double result = foodFactor + (_transportKm * 0.2) + (_energyKwh * 0.3);

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(result: result),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eco Footprint Tracker'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('🍽️ Food Choice', style: TextStyle(fontWeight: FontWeight.bold)),
            DropdownButton<String>(
              value: _foodChoice,
              onChanged: (value) {
                setState(() {
                  _foodChoice = value!;
                });
              },
              items: foodOptions.map((option) {
                return DropdownMenuItem(value: option, child: Text(option));
              }).toList(),
            ),
            SizedBox(height: 20),
            Text('🚗 Daily Transport (km)', style: TextStyle(fontWeight: FontWeight.bold)),
            Slider(
              value: _transportKm,
              min: 0,
              max: 100,
              divisions: 20,
              label: '${_transportKm.toInt()} km',
              onChanged: (value) {
                setState(() {
                  _transportKm = value;
                });
              },
            ),
            SizedBox(height: 20),
            Text('🔌 Daily Energy Use (kWh)', style: TextStyle(fontWeight: FontWeight.bold)),
            Slider(
              value: _energyKwh,
              min: 0,
              max: 50,
              divisions: 10,
              label: '${_energyKwh.toInt()} kWh',
              onChanged: (value) {
                setState(() {
                  _energyKwh = value;
                });
              },
            ),
            Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: _calculateFootprint,
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: Text('Calculate Footprint'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
