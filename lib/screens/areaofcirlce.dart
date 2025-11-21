import 'package:flutter/material.dart';
import 'dart:math'; // Import for the 'pi' constant
// Ensure the path below correctly points to your Dashboard file

class AreaOfCircle extends StatefulWidget {
  const AreaOfCircle({super.key});

  @override
  State<AreaOfCircle> createState() => _AreaOfCircle();
}

class _AreaOfCircle extends State<AreaOfCircle> {
  double radius = 0;
  double area = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Area of Circle"), // Added const
        backgroundColor: const Color.fromARGB(255, 6, 202, 192),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8), // Added const
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration( // Added const
                labelText: "Enter radius",
                hintText: "e.g 2",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.red),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
              keyboardType: TextInputType.number, // Recommended for number input
              onChanged: (value) { // Simplified onChanged syntax
                try {
                  radius = double.parse(value);
                } catch (e) {
                  // Handle invalid input gracefully if necessary
                  radius = 0; 
                }
              },
            ),
            const SizedBox(height: 8), // Added const
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    area = radius * radius * pi; // Used dart:math's pi
                  });
                },
                child: const Text("Calculate"), // Added const
              ),
            ),
            Text("Result= $area"),
            const SizedBox(height: 8), // Added const
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Simply pop the current screen off the navigation stack
                  Navigator.pop(context); 
                },
                child: const Text("Back"), // Added const
              ),
            ),
          ],
        ),
      ),
    );
  }
}
