import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CardItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String rating;
  const CardItem({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.price,
    this.rating = "4.8",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Container(
        padding: EdgeInsets.all(16),
        height: 209,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imageUrl,
                height: 94,
              ),
              Image.asset(
                "assets/elipse.png",
                width: 100,
              ),
              SizedBox(
                height: 5,
              ),
              Column(
                children: [
                  Text(
                    title,
                    style: blackTextStyle.copyWith(
                      fontWeight: medium,
                      color: Color(0xff081D43),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/star.png",
                            width: 16,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            rating,
                            style: blackTextStyle.copyWith(
                              fontSize: 12,
                              color: Color(0xff081D43),
                            ),
                          ),
                        ],
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: price,
                              style: blackTextStyle.copyWith(
                                fontWeight: bold,
                                color: Color(0xff081D43),
                              ),
                            ),
                            TextSpan(
                              text: "00",
                              style: blackTextStyle.copyWith(
                                fontWeight: bold,
                                fontSize: 10,
                                color: Color(0xff081D43),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
