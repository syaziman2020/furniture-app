import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          "assets/star.png",
          width: 16,
        ),
        SizedBox(
          width: 4,
        ),
        Image.asset(
          "assets/star.png",
          width: 16,
        ),
        SizedBox(
          width: 4,
        ),
        Image.asset(
          "assets/star.png",
          width: 16,
        ),
        SizedBox(
          width: 4,
        ),
        Image.asset(
          "assets/star.png",
          width: 16,
        ),
        SizedBox(
          width: 4,
        ),
        Image.asset(
          "assets/star.png",
          width: 16,
        ),
      ],
    );
  }
}
