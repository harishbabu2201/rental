import 'package:flutter/material.dart';
import 'package:rental/screen/widget/card_helper.dart';

class RecommendedScreen extends StatelessWidget {
  const RecommendedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> mostViewedData = [
      {
        'imageUrl': 'https://picsum.photos/seed/building/200/300',
        'price': 120,
        'rating': 4.5,
        'title': 'Carinthia Lake see Breakfast',
        'description': 'Private room / 4 beds',
      },
      {
        'imageUrl': 'https://picsum.photos/seed/home/200/300',
        'price': 150,
        'rating': 4.8,
        'title': 'Mountain View Cabin',
        'description': 'Entire cabin / 2 beds',
      },
      {
        'imageUrl': 'https://picsum.photos/seed/apartment/200/300',
        'price': 200,
        'rating': 4.7,
        'title': 'City Apartment',
        'description': 'Entire apartment / 3 beds',
      },
    ];
    final screenHeight = MediaQuery.of(context).size.height;
    final cardHeight = screenHeight * 0.2;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: cardHeight + 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: mostViewedData.length,
          itemBuilder: (context, index) {
            return CardHelper(
              imageUrl: mostViewedData[index]['imageUrl'] ?? '',
              price: mostViewedData[index]['price'],
              rating: mostViewedData[index]['rating'],
              title: mostViewedData[index]['title'] ?? 'No Title',
              description:
                  mostViewedData[index]['description'] ?? 'No Description',
              whichScreen: "recomened",
            );
          },
        ),
      ),
    );
  }
}
