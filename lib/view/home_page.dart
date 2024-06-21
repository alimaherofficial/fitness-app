import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 252, 243, 205),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'FitBit',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'check your progress',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    FontAwesomeIcons.bullseye,
                    size: 35,
                  )
                ],
              ),
              const SizedBox(height: 30),
              const Text(
                'Your Progress',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              ClipRRect(
                clipBehavior: Clip.none,
                child: SizedBox(
                  height: 200,
                  child: ClipRRect(
                    clipBehavior: Clip.none,
                    child: ListView.separated(
                      clipBehavior: Clip.none,
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(width: 10);
                      },
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                            width: 150,
                            height: 300,
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              // use random color from containerColors
                              color: containerColors[index].withOpacity(0.9),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: Icon(
                                    containerIcons[index],
                                    size: 50,
                                    color: Colors.green,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  containerStrings[index],
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  '${randomInt()} steps',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ));
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 300,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  // make elevation to make it look like a card
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          '846',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(
                          FontAwesomeIcons.arrowUp,
                          size: 20,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 4),
                        Text(
                          '250 steps',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 200,
                      child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemCount: 7,
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(width: 30);
                        },
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    Container(
                                      width: 20,
                                      height: 200,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey.withOpacity(0.3),
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      child: Container(
                                        width: 20,
                                        height: randomInt().toDouble() * 2,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: const Color(0xFF98C8FF),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                days[index],
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: const Color(0xFF000000),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: const Center(
                  child: Text(
                    'Save the Planet',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Color> containerColors = [
  const Color(0xFFE7E4FD), // Light Purple/Lavender for Walk Container
  const Color(0xFFE4F8E8), // Light Green/Mint for Trees Container
  const Color(0xFF98C8FF), // Light Blue for Progress Bar 1
  const Color(0xFF8EB8FF), // Light Blue for Progress Bar 2
  const Color(0xFF82A8FF), // Light Blue for Progress Bar 3
  const Color(0xFF7698FF), // Light Blue for Progress Bar 4
  const Color(0xFF6A88FF), // Light Blue for Progress Bar 5
  const Color(0xFF5E78FF), // Light Blue for Progress Bar 6
  const Color(0xFF000000), // Black for Save the Planet Button Background
];

// icons from font awesome to use in containers
List<IconData> containerIcons = [
  FontAwesomeIcons.walking, // Walk Icon
  FontAwesomeIcons.tree, // Tree Icon
  FontAwesomeIcons.biking, // Bike Icon
  FontAwesomeIcons.running, // Running Icon
  FontAwesomeIcons.swimmer, // Swimming Icon
  FontAwesomeIcons.dumbbell, // Dumbbell Icon
  FontAwesomeIcons.footballBall, // Football Icon
  FontAwesomeIcons.basketballBall, // Basketball Icon
  FontAwesomeIcons.volleyballBall, // Volleyball Icon
  FontAwesomeIcons.tableTennis, // Table Tennis Icon
  FontAwesomeIcons.golfBall, // Golf Icon
  FontAwesomeIcons.skiing, // Skiing Icon
  FontAwesomeIcons.snowboarding, // Snowboarding Icon
  FontAwesomeIcons.snowman, // Snowman
];

// list of strings to use in containers
List<String> containerStrings = [
  'Walk',
  'Plant Trees',
  'Bike',
  'Run',
  'Swim',
  'Workout',
  'Play Football',
  'Play Basketball',
  'Play Volleyball',
  'Play Table Tennis',
  'Play Golf',
  'Ski',
  'Snowboard',
  'Build a Snowman',
];

// make integer random number between 0 and 100
int randomInt() {
  final Random random = Random();
  return random.nextInt(100);
}

List<String> days = [
  'Sun',
  'Mon',
  'Tue',
  'Wed',
  'Thu',
  'Fri',
  'Sat',
];
