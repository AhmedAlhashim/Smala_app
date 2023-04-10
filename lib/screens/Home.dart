import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:samla_app/Global_values.dart';
import 'package:samla_app/widgets/DailyChallenge.dart';
import 'package:samla_app/widgets/Indicators.dart';
import 'package:samla_app/widgets/MainButtons.dart';

import '../widgets/CustomAppBar.dart';
import '../widgets/CustomNavigationBar.dart';
import '../widgets/WeeklyProgress.dart';
import 'Chatting.dart';
import 'Community.dart';
import 'Nutrition.dart';
import 'Profile.dart';
import 'Training.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool dailyChallengeStatus = true;

  void deactivateDailyChallengeStatus() {
    setState(() {
      dailyChallengeStatus = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
      decoration: const BoxDecoration(color: Color.fromRGBO(252, 252, 252, 1)),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        clipBehavior: Clip.none,
        child: Wrap(
          
          direction: Axis.horizontal, runSpacing: 25, children: [
          //  circular indicators
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircularIndicator(
                name: "STEPS",
                total: 20000,
                current: 13400,
                color: theme_green,
              ),
              CircularIndicator(
                name: "CALORIES",
                total: 2900,
                current: 1450,
                color: theme_pink,
              )
            ],
          ),
          //  check if there adaily challenge
          if (dailyChallengeStatus)
            DailyChallenge(
              challengeName: 'RUNNING',
              challengeProgress: '2 Times  |  45 Min',
              challengeImage: 'images/runner.svg',
              statusUpdate: deactivateDailyChallengeStatus,
            ),
         WeeklyProgress()
        ]),
      ),
    );
    // persistentFooterButtons: [MainButtons()],
  }
}
