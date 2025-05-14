import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double result;

  ResultScreen({required this.result});

  String getAdvice() {
    if (result < 5) return '🌱 Excellent! Keep it up.';
    if (result < 10) return '👍 Good. You can do even better!';
    return '⚠️ Try to reduce your footprint!';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Result'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Estimated Daily CO₂:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 16),
            Text(
              '${result.toStringAsFixed(2)} kg',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.green),
            ),
            SizedBox(height: 32),
            Text(
              getAdvice(),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: Text('Back'),
            )
          ],
        ),
      ),
    );
  }
}
