import 'package:flutter/material.dart';
import 'package:pr5/pages/first_page.dart';
import 'package:pr5/pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Практическая работа 5',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Jakarta',
      ),
      home: FirstPage(text: ''),
    );
  }
}
