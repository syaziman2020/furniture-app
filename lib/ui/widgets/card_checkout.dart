import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CardCheckout extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String colorText;
  final String item;
  final String price;
  const CardCheckout(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.colorText,
      this.item = "1",
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      width: double.infinity,
      height: 114,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(14),
            width: 82,
            height: 82,
            decoration: BoxDecoration(
              color: bgC,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Stack(
                children: [
                  Image.asset(
                    imageUrl,
                    fit: BoxFit.cover,
                    width: 45,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      "assets/elipsesmall.png",
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 16,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    colorText,
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                      color: Color(0xff081D43).withOpacity(0.7),
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width - 178,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: price,
                            style: blackTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 16,
                              color: Color(0xff081D43),
                            ),
                          ),
                          TextSpan(
                            text: "00",
                            style: blackTextStyle.copyWith(
                              fontWeight: bold,
                              fontSize: 12,
                              color: Color(0xff081D43),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(6),
                      width: 68,
                      height: 28,
                      decoration: BoxDecoration(
                        color: bgC,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 16,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(
                              child: Text(
                                "-",
                                style: blackTextStyle.copyWith(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            item,
                            style: blackTextStyle.copyWith(
                              fontSize: 14,
                            ),
                          ),
                          Container(
                            width: 16,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Center(
                              child: Text(
                                "+",
                                style: blackTextStyle.copyWith(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
