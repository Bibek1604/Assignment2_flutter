import 'package:flutter/material.dart';

class SimpleInerestScreen extends StatefulWidget {
  const SimpleInerestScreen({super.key});

  @override
  State<SimpleInerestScreen> createState() => _SimpleInerestScreen();
}

class _SimpleInerestScreen extends State<SimpleInerestScreen> {
  final TextEditingController principle = TextEditingController();
  final TextEditingController time = TextEditingController();
    final TextEditingController rate = TextEditingController();


  double? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple interest'),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: principle,
              decoration: const InputDecoration(
                labelText: 'Enter principle ',
                hintText: 'e.g. 2',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 8),
            TextField(
              controller: time,
              decoration: const InputDecoration(
                labelText: 'Enter time',
                hintText: 'e.g. 3',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
                      const SizedBox(height: 8),
            TextField(
              controller: rate,
              decoration: const InputDecoration(
                labelText: 'Enter rate',
                hintText: 'e.g. 3',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),

            /// SUM BUTTON
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                onPressed: () {
                  double p = double.tryParse(principle.text) ?? 0;
                  double t = double.tryParse(time.text) ?? 0;
                  double r = double.tryParse(rate.text) ?? 0;


                  setState(() {
                    result = p*t*r/100;
                  });
                },
                child: const Text(
                  "si",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),



            /// RESULT DISPLAY
            Text(
              "Result: ${result?.toString() ?? '--'}",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
