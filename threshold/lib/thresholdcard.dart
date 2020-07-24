import 'package:flutter/material.dart';
import 'package:threshold/colors.dart';
import 'package:threshold/hover_extensions.dart';
import 'package:threshold/sizes_helper.dart';

class ThresholdCard extends StatefulWidget {
  @override
  _ThresholdCardState createState() => _ThresholdCardState();
}

class _ThresholdCardState extends State<ThresholdCard> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 800),
        width: displayWidth(context) * 0.40,
        height: displayWidth(context) * 0.32,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(25, 25),
              color: thresholdshadowColor,
              blurRadius: 25,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          child: Image.asset(
            'assets/images/Threshold.png',
            fit: BoxFit.fill,
          ),
        ),
      ).moveDownOnHover,
    );
  }
}
