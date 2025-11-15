import 'dart:math' show pi;
import 'package:flutter/material.dart';

class AreaOfCircleScreen extends StatefulWidget {
  const AreaOfCircleScreen({super.key});
  @override
  State<AreaOfCircleScreen> createState() => _AreaOfCircleScreenState();
}

class _AreaOfCircleScreenState extends State<AreaOfCircleScreen> {
  final TextEditingController radiusController = TextEditingController();
  double? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Area of Circle'),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: radiusController,
              decoration: const InputDecoration(
                labelText: 'Enter radius',
                hintText: 'e.g. 5',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),

            // CALCULATE BUTTON
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                onPressed: () {
                  final double r =
                      double.tryParse(radiusController.text) ?? 0;
                  setState(() {
                    result = pi * r * r;
                  });
                },
                child: const Text(
                  "Calculate Area",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),

            // RESULT DISPLAY
            Text(
              "Area: ${result?.toStringAsFixed(4) ?? '--'}",
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}