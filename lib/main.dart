import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load the font
  final fontLoader = FontLoader('RobotoSlab');
  fontLoader.addFont(rootBundle.load('assets/fonts/RobotoSlab-Bold.ttf'));
  fontLoader.addFont(rootBundle.load('assets/fonts/RobotoSlab-Regular.ttf'));
  await fontLoader.load();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        fontFamily: 'RobotoSlab',
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: Text(
          'Hello, World!',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24.0,
          ),
        ),
      ),
    );
  }
}
