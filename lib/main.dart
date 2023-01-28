import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      // home: const JusinHomePage(),
      home: const MyWidget(
        name: 'Justin',
        title: 'Title',
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({
    super.key,
    required this.name,
    required this.title,
  });

  final String name;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello $name World'),
            Text('Hello $title World'),
          ],
        ),
      ),
    );
  }
}
