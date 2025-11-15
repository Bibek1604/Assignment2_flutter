import 'package:flutter/material.dart';

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();

  double? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic Operations'),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: num1Controller,
              decoration: const InputDecoration(
                labelText: 'Enter first number',
                hintText: 'e.g. 2',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 8),
            TextField(
              controller: num2Controller,
              decoration: const InputDecoration(
                labelText: 'Enter second number',
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
                  double n1 = double.tryParse(num1Controller.text) ?? 0;
                  double n2 = double.tryParse(num2Controller.text) ?? 0;

                  setState(() {
                    result = n1 + n2;
                  });
                },
                child: const Text(
                  "SUM",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),

            //Sub button 
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                onPressed: (){
                  double n1=double.tryParse(num1Controller.text)??0;
                  double n2=double.tryParse(num2Controller.text)??0;
                  setState(() {
                    result=n2-n1;
                  });
                },
                child: const Text(
                  "Less",
                  style: TextStyle(color: Colors.black, fontSize: 16 ),
                ),
              ),
            ),
                        SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                onPressed: (){
                  double n1=double.tryParse(num1Controller.text)??0;
                  double n2=double.tryParse(num2Controller.text)??0;
                  setState(() {
                    result=n2/n1;
                  });
                },
                child: const Text(
                  "divide",
                  style: TextStyle(color: Colors.black, fontSize: 16 ),
                ),
              ),
            ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                onPressed: (){
                  double n1=double.tryParse(num1Controller.text)??0;
                  double n2=double.tryParse(num2Controller.text)??0;
                  setState(() {
                    result=n2*n1;
                  });
                },
                child: const Text(
                  "multiply",
                  style: TextStyle(color: Colors.black, fontSize: 16 ),
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
