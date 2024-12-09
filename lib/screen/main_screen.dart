import 'package:flutter/material.dart';
import 'package:rental/screen/ad_acreen.dart';
import 'package:rental/screen/mostviewed_screen.dart';
import 'package:rental/screen/popular_screen.dart';
import 'package:rental/screen/recommended_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: const Color(0xFFF8F7FC),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Explore the World! By \n Travelling",
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 58,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255)),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFEAE6E6),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: const Icon(Icons.search,
                                          color: Colors.black54),
                                    ),
                                  ),
                                  const Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 10),
                                          hintText: 'Where did you go?',
                                          hintStyle: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                          border: InputBorder.none,
                                          fillColor: Colors.white,
                                          filled: true,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          SizedBox(
                            height: 61,
                            width: 61,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  side: BorderSide(
                                      color: Colors.white.withOpacity(0.5),
                                      width: 2.0),
                                ),
                                padding: const EdgeInsets.all(15),
                                backgroundColor: Colors.white,
                                elevation: 0,
                              ),
                              child: const Icon(Icons.tune,
                                  color: Colors.black, size: 25),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Popular Locations',
                    style: TextStyle(
                      fontSize: size.width < 600 ? 24 : 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              PopularScreen(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Recommeded',
                    style: TextStyle(
                      fontSize: size.width < 600 ? 24 : 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RecommendedScreen(),
              AdScreen(),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Most Viewed',
                    style: TextStyle(
                      fontSize: size.width < 600 ? 24 : 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              MostviewedScreen()
            ],
          ),
        ),
      ),
    );
  }
}
