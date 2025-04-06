import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Styles Example',
      home: const TextStylesScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TextStylesScreen extends StatelessWidget {
  const TextStylesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Styled Text Demo')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Bangladesh',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Dhaka',
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Colors.teal,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Sylhet',
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
                color: Colors.orange,
              ),
            ),
            SizedBox(height: 12),
            Text(
              'Moulvibazar',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 12),
            Text.rich(
              TextSpan(
                text: 'Kamalganj ',
                style: TextStyle(fontSize: 18),
                children: [
                  TextSpan(
                    text: 'Munshibazar ',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'Siddeshwarpur',
                    style: TextStyle(
                      color: Colors.green,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
