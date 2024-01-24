import 'package:flutter/material.dart';
import 'package:flutterfrom/homepage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form Styling Demo';
    return const MaterialApp(
      title: appTitle,
      home: Homepage(),
    );
  }
}