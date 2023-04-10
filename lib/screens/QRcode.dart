import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../Global_values.dart';

class QRcode extends StatelessWidget {
  const QRcode({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("QR code", style: textStyle)),
    );
  }
}
