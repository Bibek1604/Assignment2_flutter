import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key});

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  final TextEditingController textController = TextEditingController();
  String? result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Screen'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 140,
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.green),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [Icon(Icons.call), SizedBox(height: 6), Text('Call')],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [Icon(Icons.route), SizedBox(height: 6), Text('Route')],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [Icon(Icons.send), SizedBox(height: 6), Text('Send')],
              ),
            ],
          ),
        ),
      ),
    );
  }
}