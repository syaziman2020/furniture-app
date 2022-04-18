import 'package:flutter/material.dart';
import 'package:furniture_shop/ui/widgets/card_checkout.dart';
import 'package:furniture_shop/ui/widgets/custom_button.dart';
import '../../shared/theme.dart';
import '../widgets/top_icon_button.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget topContent() {
      return Padding(
        padding: EdgeInsets.fromLTRB(24, 30, 24, 0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TopIconButton(
                    iconUrl: "assets/arrow_back.png",
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    "Cart",
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  TopIconButton(
                    iconUrl: "assets/trash.png",
                    onTap: () {},
                  ),
                ],
              ),
            ),
            CardCheckout(
              title: "Rocking Chair",
              imageUrl: "assets/kursi3.png",
              colorText: "Dark Grey",
              price: "\$145.",
            ),
            CardCheckout(
              title: "Lounge Chair",
              imageUrl: "assets/kursi4.png",
              colorText: "Olive Green",
              price: "\$115.",
              item: "2",
            ),
          ],
        ),
      );
    }

    Widget bottomContent() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(24, 24, 24, 10),
        decoration: BoxDecoration(color: Colors.white),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Selected Item",
              style: blackTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Rocking Chair",
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                    color: Color(0xff081D43).withOpacity(0.7),
                  ),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "\$145.",
                        style: blackTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: 20,
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
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Lounge Chair",
                  style: blackTextStyle.copyWith(
                    fontWeight: medium,
                    color: Color(0xff081D43).withOpacity(0.7),
                  ),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "\$115.",
                        style: blackTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: 20,
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
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 24),
              child: Image.asset(
                "assets/dash_line.png",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style:
                      blackTextStyle.copyWith(fontWeight: medium, fontSize: 16),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "\$260.",
                        style: blackTextStyle.copyWith(
                          fontWeight: bold,
                          fontSize: 20,
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
              ],
            ),
            ButtonCustom(
              title: "Checkout",
              onTap: () {},
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgC,
      body: Column(
        children: [
          topContent(),
          Spacer(),
          bottomContent(),
        ],
      ),
    );
  }
}
