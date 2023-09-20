import 'package:flutter/material.dart';
import 'package:receitas/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 247, 119, 236),
        secondaryHeaderColor: const Color(0xFFEB90E2),
        scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
    );
  }
}
