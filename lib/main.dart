import 'package:flutter/material.dart';
import 'package:flutterfrom/homepage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'memo';
    return const MaterialApp(debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Homepage(),
    );
  }
}