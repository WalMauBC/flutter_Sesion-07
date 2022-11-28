import 'package:flutter/material.dart';

class PlantillaWidget extends StatelessWidget {
  final String? img;
  final String? title;
  final String? subtitle;
  final String? content;

  const PlantillaWidget(
      {super.key, this.img, this.title, this.subtitle, this.content});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 500,
            child: Image.network(
              '$img',
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$title',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('$subtitle'),
                    ],
                  ),
                ),
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                const Text('100')
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: SingleChildScrollView(
                    child: Column(
                      children: const [
                        Icon(
                          Icons.star_half,
                          color: Color.fromARGB(255, 196, 149, 21),
                          size: 18,
                        ),
                        Text(
                          'Star',
                          style:
                              TextStyle(color: Color.fromARGB(255, 29, 70, 49)),
                        )
                      ],
                    ),
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: SingleChildScrollView(
                    child: Column(
                      children: const [
                        Icon(
                          Icons.map,
                          color: Color.fromARGB(255, 196, 149, 21),
                          size: 18,
                        ),
                        Text(
                          'Route',
                          style:
                              TextStyle(color: Color.fromARGB(255, 29, 70, 49)),
                        )
                      ],
                    ),
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: SingleChildScrollView(
                    child: Column(
                      children: const [
                        Icon(
                          Icons.share,
                          color: Color.fromARGB(255, 196, 149, 21),
                          size: 18,
                        ),
                        Text(
                          'Share',
                          style:
                              TextStyle(color: Color.fromARGB(255, 29, 70, 49)),
                        )
                      ],
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: SizedBox(
              child: Text(
                '$content',
                textAlign: TextAlign.justify,
              ),
            ),
          )
        ],
      ),
    );
  }
}
