import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent({this.iconText, this.icon});

  final String iconText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          this.icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          this.iconText,
          style: TextStyle(color: Color(0xFF8D8E98), fontSize: 18.0),
        )
      ],
    );
  }
}