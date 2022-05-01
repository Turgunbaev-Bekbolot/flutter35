import 'package:flutter/material.dart';

class BottomCont extends StatelessWidget {
  final String text;
  final Icon icon;
  final bool? color;
  final bool? color2;

  const BottomCont({
    Key? key,
    required this.icon,
    required this.text,
    this.color,
    this.color2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 20,
          height: 22,
          child: icon,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 6),
          child: Text(
            text,
            style: TextStyle(
              color: color2! ? Color(0xff969DA8) : Color(0xff00FF94),
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
