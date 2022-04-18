import 'package:flutter/material.dart';
import 'package:furniture_shop/shared/theme.dart';

class DiscountPage extends StatelessWidget {
  const DiscountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Discount Page",
        style: blackTextStyle.copyWith(
          fontSize: 24,
        ),
      ),
    );
  }
}
