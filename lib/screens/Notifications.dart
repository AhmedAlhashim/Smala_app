import 'package:flutter/material.dart';

import '../Global_values.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Notification", style: textStyle)),
    );
  }
}
