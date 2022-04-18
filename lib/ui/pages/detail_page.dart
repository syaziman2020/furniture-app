import 'package:flutter/material.dart';
import 'package:furniture_shop/ui/pages/checkout_page.dart';
import 'package:furniture_shop/ui/widgets/top_icon_button.dart';
import '../../shared/theme.dart';
import '../widgets/add_mines_item.dart';
import '../widgets/circle_color.dart';
import '../widgets/custom_button.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buttonHeader() {
      return Row(
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
            "Detail",
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          TopIconButton(
            iconUrl: "assets/heartlove.png",
            onTap: () {},
          ),
        ],
      );
    }

    Widget topContent() {
      return Padding(
        padding: const EdgeInsets.fromLTRB(24, 30, 24, 0),
        child: Column(
          children: [
            buttonHeader(),
            SizedBox(
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top -
                  MediaQuery.of(context).padding.bottom -
                  315,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/kursi3.png",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      "assets/elipsedis.png",
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget bottomContent() {
      return Padding(
        padding: EdgeInsets.only(top: 10),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 16,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rocking Chair",
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: medium,
                      ),
                    ),
                    AddMinesItem(),
                  ],
                ),
                Text(
                  "Chill, Comfortable",
                  style: blackTextStyle.copyWith(
                    color: Color(0xff081D43).withOpacity(0.7),
                  ),
                ),
                SizedBox(height: 32),
                Text(
                  "Description",
                  style: blackTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Made from the best wood and made as comfortable as\n possible for you also the premium design looks more\n stylish. and very suitable for decorating your room.",
                  style: blackTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Color",
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      width: 23,
                    ),
                    CircleColor(
                      color: Color(0xff121214),
                    ),
                    CircleColor(
                      color: Color(0xff670B00),
                    ),
                    CircleColor(
                      color: Color(0xffA8A6A7),
                    ),
                  ],
                ),
                ButtonCustom(
                  title: "Add to cart",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CheckoutPage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgC,
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          topContent(),
          bottomContent(),
        ],
      ),
    );
  }
}
