import 'package:flutter/material.dart';

import '../Global_values.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Profile", style: textStyle)),
    );
  }
}