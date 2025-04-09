import 'package:flutter/material.dart';

void main() {
  runApp(MySettingsApp());
}

class MySettingsApp extends StatefulWidget {
  @override
  _MySettingsAppState createState() => _MySettingsAppState();
}

class _MySettingsAppState extends State<MySettingsApp> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Settings with Toggle',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,
      home: SettingsScreen(
        isDarkMode: _isDarkMode,
        onToggle: (value) {
          setState(() {
            _isDarkMode = value;
          });
        },
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  final bool isDarkMode;
  final ValueChanged<bool> onToggle;

  SettingsScreen({required this.isDarkMode, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: ListView(
        children: [
          SwitchListTile(
            title: Text('Enable Dark Mode'),
            value: isDarkMode,
            onChanged: onToggle,
            secondary: Icon(Icons.dark_mode),
          ),
        ],
      ),
    );
  }
}
