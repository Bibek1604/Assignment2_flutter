import 'package:flutter/material.dart';

class PalindromeScreen extends StatefulWidget {
  const PalindromeScreen({super.key});
  @override
  State<PalindromeScreen> createState() => _PalindromeScreenState();
}

class _PalindromeScreenState extends State<PalindromeScreen> {
  final TextEditingController textController = TextEditingController();
  String? result;   // will hold "Yes" / "No" or "--"

  // helper to clean & check palindrome
  bool _isPalindrome(String s) {
    final cleaned = s.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '').toLowerCase();
    return cleaned == cleaned.split('').reversed.join();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Palindrome Checker'),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: textController,
              decoration: const InputDecoration(
                labelText: 'Enter text',
                hintText: 'e.g. racecar',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.text,
            ),
            const SizedBox(height: 16),

            // CHECK BUTTON
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                onPressed: () {
                  final input = textController.text.trim();
                  setState(() {
                    if (input.isEmpty) {
                      result = '--';
                    } else {
                      result = _isPalindrome(input) ? "Yes" : "No";
                    }
                  });
                },
                child: const Text(
                  "Check Palindrome",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ),

            // RESULT DISPLAY
            Text(
              "Palindrome? ${result ?? '--'}",
              style:
                  const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}