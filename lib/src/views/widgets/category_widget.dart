import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CatigoryW extends StatelessWidget {
  String image;
  String text;
  Color color;
  VoidCallback onPressed;

  CatigoryW({Key? key, required this.image, required this.text, required this.color, required this.onPressed}) : super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 177,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFF399D63).withOpacity(.5),
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              width: 120,
              height: 120,
            ),
            const SizedBox(height: 10),
            Text(
              text,
              style: TextStyle(
                color: color,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
      onTap:onPressed,
    );
  }
}
