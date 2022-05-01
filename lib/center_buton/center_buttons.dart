import 'package:flutter/material.dart';

class CenterButton extends StatelessWidget {
  final String text1;
  final String text2;
  final String image;

  const CenterButton({
    Key? key,
    required this.image,
    required this.text1,
    required this.text2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 20, 26, 0),
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Container(
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                color: Color(0xff18222D),
                borderRadius: BorderRadius.circular(13),
              ),
              child: SizedBox(
                width: 30,
                height: 30,
                child: Image.asset('$image'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                text1,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Text(
              text2,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
