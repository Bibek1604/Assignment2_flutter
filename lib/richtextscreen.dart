import 'package:flutter/material.dart';

class RichTextScreen extends StatelessWidget {
  const RichTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            text: 'hello bold world ',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
            children: <TextSpan>[
              const TextSpan(
                text: 'bold',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),
              const TextSpan(
                text: ' hello',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
        
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            text: ' to  ',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),
            children: const <TextSpan>[
              TextSpan(
                text: 'bold',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.amber,
                ),
              ),
              TextSpan(
                text: ' world',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

