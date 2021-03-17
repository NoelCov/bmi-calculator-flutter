import 'package:flutter/material.dart';

class CardReusable extends StatelessWidget {
  CardReusable({this.color, this.cardChild, this.onTapFunction});

  final Color color;
  final Widget cardChild;
  final Function onTapFunction;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: Container(
        margin: EdgeInsets.all(15.0),
        child: cardChild,
        decoration: BoxDecoration(
          color: this.color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
