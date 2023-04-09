import 'package:flutter/material.dart';
import '../Global_values.dart';



class GradientContainer extends StatelessWidget {
  final icon;
  final color1;
  final color2;
  final name;
  final width;
  final height;
  

  const GradientContainer(
      {super.key,
      this.icon,
      this.name,
      this.color1,
      this.color2,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width * 0.45,
      height: height ?? MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        boxShadow: [boxShadow],
        borderRadius: BorderRadius.all(Radius.circular(12)),
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(28, 10, 28, 28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              icon,
              size: MediaQuery.of(context).size.width * 0.21,
            ),
            Text(
              name,
              textAlign: TextAlign.center,
              style: textStyle.copyWith(color: Colors.white, fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
