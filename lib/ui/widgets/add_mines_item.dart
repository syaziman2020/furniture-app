import 'package:flutter/material.dart';
import 'package:furniture_shop/shared/theme.dart';

class AddMinesItem extends StatelessWidget {
  const AddMinesItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(6),
      width: 100,
      height: 36,
      decoration: BoxDecoration(
        color: bgC,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 24,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Center(
              child: Text(
                "-",
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Text(
            "1",
            style: blackTextStyle.copyWith(
              fontSize: 20,
            ),
          ),
          Container(
            width: 24,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Center(
              child: Text(
                "+",
                style: blackTextStyle.copyWith(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
