import 'package:flutter/material.dart';
import 'package:flutter_application_1/sesion04/scrollwidget.dart';
import 'package:flutter_application_1/sesion04/checkboxswitchwidget.dart';

import 'package:flutter_application_1/widgetsdemo.dart';

import 'dropdownbuttonwidget.dart';
import 'emailpasswidget.dart';
import 'sliderwidget.dart';

class Home4 extends StatelessWidget {
  const Home4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Sesion 4'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonWidget(
              text: 'Email & Password',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const EmailPassWidget()),
                );
              },
            ),
            ButtonWidget(
              text: 'DrowDownButton',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Dropdownbuttonformfiel()),
                );
              },
            ),
            ButtonWidget(
              text: 'Slider',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SliderWidget()),
                );
              },
            ),
            ButtonWidget(
              text: 'Checkbox & Switch',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CheboxSwitchWidget()),
                );
              },
            ),
            ButtonWidget(
              text: 'Scroll Infinity',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ScrollwidgetPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
