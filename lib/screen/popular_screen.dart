import 'package:flutter/material.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<List<String>> locations = [
      ['India', 'https://picsum.photos/seed/india/160/240'],
      ['Moscow', 'https://picsum.photos/seed/moscow/160/240'],
      ['USA', 'https://picsum.photos/seed/hills/200/300'],
      ['Canada', 'https://picsum.photos/seed/mountain/200/300'],
      ['Japan', 'https://picsum.photos/seed/mumbai/200/300'],
    ];

    final size = MediaQuery.of(context).size;
    final imageHeight = size.height * 0.21;
    return SizedBox(
      height: imageHeight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Stack(
                children: [
                  Image.network(
                    locations[index][1],
                    height: imageHeight,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 10,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: Text(
                        locations[index][0],
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
