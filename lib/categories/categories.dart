import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final String text;
  final String image;
  final Color color;
  final bool? width;
  final bool? height;
  final bool? textColor;

  const Categories({
    Key? key,
    required this.color,
    required this.image,
    required this.text,
    this.height,
    this.width,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, bottom: 20),
      child: Container(
        width: 162,
        height: 224,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, right: 30),
              child: SizedBox(
                width: 100,
                height: 70,
                child: Expanded(
                  child: Text(
                    text,
                    style: TextStyle(
                      color: textColor! ? Colors.white : Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 3, left: 10),
              child: Container(
                width: width! ? 162 : 138,
                height: height! ? 130 : 130,
                child: Image.asset('$image'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
