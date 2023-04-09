import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:countup/countup.dart';

import 'package:flutter/cupertino.dart';
import 'package:samla_app/Global_values.dart';

class CircularIndicator extends StatefulWidget {
  final String name;
  int? total;
  int? current;
  final double? width;
  final double? height;
  final Color color;

  CircularIndicator(
      {super.key,
      required this.name,
      this.width,
      this.height,
      this.total,
      this.current,
      required this.color});

  @override
  State<CircularIndicator> createState() => _CircularIndicatorState();
}

class _CircularIndicatorState extends State<CircularIndicator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: primary_decoration,
      alignment: Alignment.center,
      width: widget.width ?? MediaQuery.of(context).size.width * 0.41,
      height: widget.height ?? MediaQuery.of(context).size.width * 0.41,
      // constraints: BoxConstraints(
      //     minWidth: 130, maxWidth: 230, minHeight: 130, maxHeight: 230),
      child: LayoutBuilder(
          builder: (BuildContext context1, BoxConstraints constraints) {
        return CircularPercentIndicator(
          animation: true,
          animationDuration: 1500,
          radius: constraints.maxWidth * 0.40,
          lineWidth: 5.0,
          percent: widget.current != null && widget.total != null
              ? widget.current! / widget.total!
              : 0,
          center: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Countup(
                begin: 0,
                end: widget.current?.toDouble() ?? 0,
                duration: Duration(milliseconds: 1500),
                separator: '',
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: widget.color),
              ),
              Text(
                widget.name,
                style: TextStyle(
                    fontSize: 15,
                    // fontWeight: FontWeight.bold,
                    color: theme_darkblue.withOpacity(0.3)),
              )
            ],
          ),
          progressColor: widget.color,
          backgroundColor: widget.color.withOpacity(0.2),
        );
      }),
    );
    ;
  }
}
