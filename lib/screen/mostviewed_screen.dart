import 'package:flutter/material.dart';
import 'package:rental/screen/widget/card_helper.dart';

class MostviewedScreen extends StatelessWidget {
  const MostviewedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> mostViewedData = [
      {
        'imageUrl': 'https://picsum.photos/seed/lodge/200/300',
        'price': 120,
        'rating': 4.5,
        'title': 'Carinthia Lake see Breakfast',
        'description': 'Private room / 4 beds',
      },
      {
        'imageUrl': 'https://picsum.photos/seed/hills/200/300',
        'price': 150,
        'rating': 4.8,
        'title': 'Mountain View Cabin',
        'description': 'Entire cabin / 2 beds',
      },
      {
        'imageUrl': 'https://picsum.photos/seed/mumbai/200/300',
        'price': 200,
        'rating': 4.7,
        'title': 'City Apartment',
        'description': 'Entire apartment / 3 beds',
      },
    ];

    return LayoutBuilder(builder: (context, constraints) {
      final maxWidth = constraints.maxWidth;
      final isMobile = maxWidth <= 600;
      final isTablet = maxWidth > 600 && maxWidth <= 1024;

      return Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: mostViewedData.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: isMobile
                ? 1
                : isTablet
                    ? 2
                    : 3,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: isMobile
                ? 1.1
                : isTablet
                    ? 1
                    : 1.16,
          ),
          itemBuilder: (context, index) {
            return CardHelper(
              imageUrl: mostViewedData[index]['imageUrl'] ?? '',
              price: mostViewedData[index]['price'],
              rating: mostViewedData[index]['rating'],
              title: mostViewedData[index]['title'] ?? 'No Title',
              description:
                  mostViewedData[index]['description'] ?? 'No Description',
              whichScreen: "mostViewed",
            );
          },
        ),
      );
    });
  }
}
