import 'package:flutter/material.dart';
import 'package:flutter_application_1/sesion03/Home3.dart';
import 'package:flutter_application_1/sesion04/Home4.dart';
import 'package:flutter_application_1/sesion05/home5.dart';
import 'package:flutter_application_1/sesion06/screen/home6screen.dart';
import 'package:flutter_application_1/sesion07/screen/scrolltiktok.dart';
import 'package:flutter_application_1/sesion07/widgets/plantillawidget.dart';

import 'package:flutter_application_1/widgetsdemo.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Sesiones'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ButtonWidget(
              text: 'Sesion03',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home()));
              },
            ),
            ButtonWidget(
              text: 'Sesion04',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home4()));
              },
            ),
            ButtonWidget(
              text: 'Sesion05',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Home5Page()));
              },
            ),
            ButtonWidget(
              text: 'Sesion06',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Home6Screen()));
              },
            ),
            ButtonWidget(
              text: 'Sesion07',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ScrollTiktokPage()));
              },
            ),
          ],
        ),
      ),
    );
  }

  MaterialButton buttonWidget({String? name, Function()? onPressed}) {
    return MaterialButton(
      height: 50,
      minWidth: double.infinity,
      elevation: 1,
      color: const Color.fromARGB(255, 6, 59, 103),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Text(
        name!,
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
      onPressed: () => onPressed!(),
    );
  }
}
