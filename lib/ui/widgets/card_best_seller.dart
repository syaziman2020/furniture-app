import 'package:flutter/material.dart';
import 'package:furniture_shop/ui/widgets/rating.dart';

import '../../shared/theme.dart';

class CardBestSeller extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String style;
  final Function() onTap;
  const CardBestSeller(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.price,
      required this.style,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(9),
        width: double.infinity,
        height: 147,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                width: 120,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: bgC,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      imageUrl,
                      width: 65,
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/elipsesmall.png",
                      height: 9,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                      color: Color(0xff081D43),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    style,
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                      color: Color(0xff081D43),
                    ),
                  ),
                  SizedBox(height: 8),
                  Rating(),
                  SizedBox(
                    height: 12,
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: price,
                          style: blackTextStyle.copyWith(
                            fontWeight: bold,
                            fontSize: 18,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
