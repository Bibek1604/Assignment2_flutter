import 'package:flutter/material.dart';
import 'package:project_final/richtextscreen.dart';
import 'arithmetic_screen.dart';
import 'simpleinterest_screen.dart';
import 'area_of_circle_screen.dart';
import 'palindrome_screen.dart';
import 'flutter_layout_screen.dart';


class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  void _navigate(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Features Hubs"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            _buildCard(
              context,
              title: "Arithmetic Opertion",
              icon: Icons.calculate,
              screen: const ArithmeticScreen(),
            ),
            _buildCard(
              context,
              title: "Simple Interest",
              icon: Icons.account_balance_wallet,
              screen: const SimpleInerestScreen(),
            ),
            _buildCard(
              context,
              title: "Area of Circle",
              icon: Icons.circle_outlined,
              screen: const AreaOfCircleScreen(),
            ),
            _buildCard(
              context,
              title: "Palindrome",
              icon: Icons.text_fields,
              screen: const PalindromeScreen(),
            ),
            _buildCard(
              context,
              title: "Layout Examples",
              icon: Icons.view_comfy,
              screen: const LayoutScreen(),
            ),
            _buildCard(context, 
            title: "richtext",
             icon: Icons.text_decrease, 
            screen: const RichTextScreen())
          ],
        ),
      ),
    );
  }

  Widget _buildCard(BuildContext context,
      {required String title, required IconData icon, required Widget screen}) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () => _navigate(context, screen),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 50, color: Colors.amber[700]),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}