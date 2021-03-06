import 'package:chips_options_demo/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chips Options Demo',
      theme: ThemeData(primarySwatch: Colors.red),
      home: const HomeScreen(),
    );
  }
}
