import 'package:flutter/material.dart';

void main() => runApp(MyGridApp());

class MyGridApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image GridView Demo',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: ImageGridScreen(),
    );
  }
}

class ImageGridScreen extends StatelessWidget {
  final List<String> imageUrls = List.generate(
    12,
    (index) => 'https://picsum.photos/seed/pic$index/300/300',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Responsive Image Grid')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: imageUrls.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200, // max width of each grid item
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1,
          ),
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(imageUrls[index], fit: BoxFit.cover),
            );
          },
        ),
      ),
    );
  }
}
