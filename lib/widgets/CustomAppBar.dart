
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Global_values.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  CustomAppBar({
    this.height = kToolbarHeight,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);
  double sizeOficon = 27;
  Color iconColor = theme_darkblue.withOpacity(0.5);


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: primary_decoration,
      padding: EdgeInsets.fromLTRB(25, 0, 15, 0),
      height: preferredSize.height,
      // color: primary_color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // row of profile
          Row(
            children: [
              CircleAvatar(
                backgroundColor: theme_green,
                radius: 21,
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/download.jpeg'),
                  radius: 19,
                ),
              ),
              SizedBox(width: 10),
              Text('Kermit bin Frog',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                      fontSize: 17,
                      decoration: TextDecoration.none,
                      color: theme_darkblue.withOpacity(0.7))),
            ],
          ),
          // row of upper buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            IconButton(
          icon: SvgPicture.asset(
            'images/notification.svg',
            height: sizeOficon,
            color: iconColor,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/notifications');
          },
        ),
            SizedBox(
              width: 5,
            ),
            IconButton(
              icon: SvgPicture.asset(
                'images/qrcode.svg',
                height: sizeOficon,
                color: iconColor,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/QRcode');
              },
            ),
          ])
        ],
      ),
    );
  }
}
