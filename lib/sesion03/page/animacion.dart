import 'dart:math';

import 'package:flutter/material.dart';

class AnimacionDemo extends StatefulWidget {
  const AnimacionDemo({super.key});

  @override
  State<AnimacionDemo> createState() => _AnimacionDemoState();
}

class _AnimacionDemoState extends State<AnimacionDemo> {
  double _width = 70;
  double _height = 70;
  Color _color = Colors.orange;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
          duration: const Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.accessibility_sharp),
        backgroundColor: Colors.amber,
        onPressed: () {
          setState(() {
            final random = Random();
            _width = random.nextInt(300).toDouble();
            _height = random.nextInt(300).toDouble();
            _color = Color.fromRGBO(random.nextInt(500), random.nextInt(500),
                random.nextInt(500), 1);
            _borderRadius =
                BorderRadius.circular(random.nextInt(100).toDouble());
          });
        },
      ),
    );
  }
}
