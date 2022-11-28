import 'package:flutter/material.dart';
import 'package:flutter_application_1/sesion07/widgets/plantillawidget.dart';

import 'package:tiktoklikescroller/tiktoklikescroller.dart';

class ScrollTiktokPage extends StatefulWidget {
  const ScrollTiktokPage({super.key});

  @override
  State<ScrollTiktokPage> createState() => _ScrollTiktokPageState();
}

class _ScrollTiktokPageState extends State<ScrollTiktokPage> {
  late Controller controller;

  final List<dynamic> data = [
    {
      'img':
          'https://st4.depositphotos.com/10629342/20739/i/600/depositphotos_207390370-stock-photo-michael-jordan-hall-fame-player.jpg',
      'title': 'MICHAEL JORDAN (BULLS)',
      'subtitle': '6 Campeonatos de NBA',
      'content':
          'Su majestad, como le dicen, es el mayor referente del baloncesto mundial, y uno de los deportistas mas reconocidos en la historia.'
    },
    {
      'img':
          'https://st4.depositphotos.com/10629342/20370/i/450/depositphotos_203704246-stock-photo-kobe-bryant-taking-foul-shot.jpg',
      'title': 'KOBE BRYANT (LAKERS)',
      'subtitle': '5 Campeonatos de NBA',
      'content':
          'Conocido como el segundo Michael Jordan, todas sus jugadas son iguales y hasta mejoradas que Michael Jordan.'
    },
    {
      'img':
          'https://st4.depositphotos.com/21607914/24412/i/450/depositphotos_244127756-stock-photo-lebron-james-miami-heat-looks.jpg',
      'title': 'LEBRON JAMES (HEAT)',
      'subtitle': '5 campeonatos de la NBA',
      'content':
          'Es el jugador mas inteligente de la NBA, su capacidad intelectual le hace jugar en cualquier posicion.'
    },
    {
      'img':
          'https://st4.depositphotos.com/21607914/23698/i/450/depositphotos_236988398-stock-photo-stephen-curry-golden-state-warriors.jpg',
      'title': 'STHEPHEN CURRY (WARRIOR)',
      'subtitle': '5 campeonatos de la NBA',
      'content':
          'Se le considera el mejor lanzador de triples de la historia de la NBA'
    },
  ];

  Controller? testingController;

  @override
  void initState() {
    controller = testingController ?? Controller()
      ..addListener((event) {
        _handleCallbackEvent(event.direction, event.success);
      });
    super.initState();
  }

  void _handleCallbackEvent(ScrollDirection direction, ScrollSuccess success,
      {int? currentIndex}) {
    print(
        "Scroll callback received with data: {direction: $direction, success: $success and index: ${currentIndex ?? 'not given'}}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NBA - JUGADORES ELITE'),
        centerTitle: true,
      ),
      body: TikTokStyleFullPageScroller(
          contentSize: data.length,
          swipePositionThreshold: 0.2,
          swipeVelocityThreshold: 2000,
          animationDuration: const Duration(milliseconds: 400),
          controller: controller,
          builder: (BuildContext context, int index) {
            final sitios = data[index];

            return PlantillaWidget(
              img: sitios['img'],
              title: sitios['title'],
              subtitle: sitios['subtitle'],
              content: sitios['content'],
            );
          }),
    );
  }
}
