import 'package:flutter/material.dart';
import 'package:flutter_application_1/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sesion 2',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const Menu(),
    );
  }
}
