import 'package:flutter/material.dart';

class ImagesDemo extends StatelessWidget {
  const ImagesDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Images'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: SizedBox(
            height: 200,
            width: double.infinity,
            child: FadeInImage(
              placeholder: AssetImage('assets/demo.gif'),
              image: NetworkImage(
                  'https://cdn.pixabay.com/photo/2017/07/27/00/46/fantasy-2543658__340.jpg'),
            )),
      ),
    );
  }
}
