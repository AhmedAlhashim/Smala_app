import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:samla_app/Global_values.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainButtons extends StatelessWidget {
  const MainButtons({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeOficon = MediaQuery.of(context).size.width * 0.080;
    Color selectedColor = theme_darkblue.withOpacity(0.8);
    Color unselectedColor = theme_darkblue.withOpacity(0.5);
    String? currentRoute = ModalRoute.of(context)?.settings.name;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          icon: SvgPicture.asset(
            'images/home.svg',
            height: sizeOficon,
            color: currentRoute == '/home' ? selectedColor : unselectedColor,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/home');
          },
        ),
        IconButton(
          icon: SvgPicture.asset(
            'images/dumbbell.svg',
            height: sizeOficon,
            color:
                currentRoute == '/training' ? selectedColor : unselectedColor,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/training');
          },
        ),
        IconButton(
          icon: SvgPicture.asset(
            'images/nutrition.svg',
            height: sizeOficon,
            color:
                currentRoute == '/nutrition' ? selectedColor : unselectedColor,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/nutrition');
          },
        ),
        IconButton(
          icon: SvgPicture.asset(
            'images/community.svg',
            height: sizeOficon,
            color:
                currentRoute == '/community' ? selectedColor : unselectedColor,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/community');
          },
        ),
        IconButton(
          icon: SvgPicture.asset(
            'images/message.svg',
            height: sizeOficon,
            color:
                currentRoute == '/chatting' ? selectedColor : unselectedColor,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/chatting');
          },
        ),
        IconButton(
          icon: SvgPicture.asset(
            'images/profile.svg',
            height: sizeOficon,
            color: currentRoute == '/profile' ? selectedColor : unselectedColor,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/profile');
          },
        ),
      ],
    );
  }
}
