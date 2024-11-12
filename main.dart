import 'package:belajar_widget/styles.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'MY TRIP MY ADVENTURE';
    return MaterialApp(
        title: appTitle,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(appTitle),
              centerTitle: true,
            ),
            body: const SingleChildScrollView(
              child: Column(
                children: [
                  ImageSection(
                    image: 'assets/images/banda.jpg',
                  ),
                  TitleSection(
                    name: 'Banda Neira',
                    location: 'Banda Islands in Maluku province, Indonesia',
                  ),
                  ButtonSection(),
                  TextSection(
                    description:
                        'Banda Neira or Banda Naira is one of ten volcanic islands in the Banda Archipelago in the Maluku province,'
                        'in eastern Indonesia. The Banda Islands, probably better known as the fabled Spice Islands of ancient times, are covered with towering, aromatic, tropical-evergreens. '
                        'The Myristica Trees, indigenous to the Banda Islands, are the source of two rare and lucrative spices: nutmeg and mace, once found exclusively on the Banda Islands.'
                        'A sparkling, sapphire sea surrounds these already incredible islands, brimming with exquisite corals and abundant ocean life, '
                        'making the Banda Islands not only a historically significant destination, but also an internationally recognized diving spot.',
              ),
            ],
          ),
        )
      )
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: const Color.fromARGB(255, 255, 221, 0),
          ),
          const Text('4,8'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: const Color.fromRGBO(0, 128, 255, 1),
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: const Color.fromRGBO(0, 128, 255, 1),
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: const Color.fromRGBO(0, 128, 255, 1),
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}
