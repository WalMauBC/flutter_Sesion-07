import 'package:flutter/material.dart';

class ListTileDemo extends StatelessWidget {
  const ListTileDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text('ListTile'),
      ),
      body: ListView(
        children: [
          Card(
            child: ListTile(
              title: Text('Prueba 1'),
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text('Prueba 2'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Prueba 3'),
              trailing: Icon(Icons.adb_rounded),
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text('Prueba 4'),
            ),
          ),
          Card(
            child: ListTile(
              leading: FlutterLogo(
                size: 50,
              ),
              title: Text('Prueba 5'),
              subtitle: Text('Prueba de description'),
            ),
          )
        ],
      ),
    );
  }
}
