import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World App',
      theme: ThemeData(
        fontFamily: 'RobotoMono', // Custom font
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
            fontSize: 32,
            color: Colors.deepPurple, // Custom color
          ),
        ),
      ),
      home: const HelloWorldScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HelloWorldScreen extends StatelessWidget {
  const HelloWorldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text('Hello World!')));
  }
}
