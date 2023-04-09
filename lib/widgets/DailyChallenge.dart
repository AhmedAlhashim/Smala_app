import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:samla_app/Global_values.dart';

class DailyChallenge extends StatefulWidget {
  const DailyChallenge({super.key});

  @override
  State<DailyChallenge> createState() => _DailyChallengeState();
}

class _DailyChallengeState extends State<DailyChallenge> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      height: 3000,
      decoration: primary_decoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Daily Challenge", style: textStyle.copyWith(fontSize: 16,fontWeight:FontWeight.bold)),
          Row(
            children: [
              SvgPicture.asset(
                'images/running.svg',
                // height: 30,
              ),
            ],
          )
          
      ]),
    );
  }
}