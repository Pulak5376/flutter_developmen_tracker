import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Example',
      home: const ItemListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ItemListScreen extends StatelessWidget {
  const ItemListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Generate a list of 50 items
    final List<String> items = List.generate(
      20,
      (index) => 'Item ${index + 1}',
    );

    return Scaffold(
      appBar: AppBar(title: const Text('List of Items')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index], style: const TextStyle(fontSize: 18)),
          );
        },
      ),
    );
  }
}
