import 'package:bwa_cozy/widgets/city_card.dart';
import 'package:bwa_cozy/widgets/space_card.dart';
import 'package:flutter/material.dart';
import 'package:bwa_cozy/theme.dart';

import '../models/city.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.only(
            top: edge,
            left: edge,
          ),
          child: ListView(
            children: [
              //NOTE: TITLE/HEADER
              Text('Explore Now',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                  )),
              const SizedBox(height: 2),
              Text(
                'Mencari kosan yang cozy',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 30),

              //NOTE: POPULAR CITIES
              Text(
                'Popular Cities',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CityCard(
                        City(
                          id: 1,
                          name: 'Jakarta',
                          imageUrl: 'assets/images/city1.png',
                        ),
                      ),
                      const SizedBox(width: 20),
                      CityCard(
                        City(
                            id: 2,
                            name: 'Bandung',
                            imageUrl: 'assets/images/city2.png',
                            isPopular: true),
                      ),
                      const SizedBox(width: 20),
                      CityCard(City(
                        id: 3,
                        name: 'Surabaya',
                        imageUrl: 'assets/images/city3.png',
                      )),
                    ],
                  )),
              const SizedBox(height: 30),

              //NOTE: RECOMMENDED SPACE
              Text(
                'Recommended Space',
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 16),
              Column(
                children: const [
                  SpaceCard(),
                  SizedBox(height: 30),
                  SpaceCard(),
                  SizedBox(height: 30),
                  SpaceCard()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
