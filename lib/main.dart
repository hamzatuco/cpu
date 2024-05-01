import 'package:cpu/Pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: const Color(0xFF6970AE),
        appBarTheme: const AppBarTheme(
          color: Color(0xFF6970AE),
        ),
      ),
      home: const Index(),
      title: 'CPU Servis | Servis mobitela, računara i ostale elektronike',
      debugShowCheckedModeBanner: false,
    );
  }
}
