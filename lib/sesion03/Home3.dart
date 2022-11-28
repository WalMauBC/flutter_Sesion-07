import 'package:flutter/material.dart';

import 'page/animacion.dart';
import 'page/images.dart';
import 'page/listtile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Sesion 03'),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            MaterialButton(
                height: 50,
                minWidth: double.infinity,
                color: Color.fromARGB(255, 71, 151, 102),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'ListTile',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ListTileDemo()));
                }),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
                height: 50,
                minWidth: double.infinity,
                color: Color.fromARGB(255, 71, 151, 102),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Images',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ImagesDemo()));
                }),
            const SizedBox(
              height: 10,
            ),
            MaterialButton(
                height: 50,
                minWidth: double.infinity,
                color: Color.fromARGB(255, 71, 151, 102),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'AnimacionDemo',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AnimacionDemo()));
                }),
          ],
        ),
      ),
    );
  }
}
