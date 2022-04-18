import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class ListProduct extends StatelessWidget {
  final String title;
  final bool currentProduct;
  const ListProduct({
    Key? key,
    required this.title,
    this.currentProduct = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: (currentProduct) ? yellowC : Colors.transparent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          title,
          style: blackTextStyle.copyWith(
            fontSize: 14,
            color: (currentProduct) ? Colors.white : Color(0xff081D43),
          ),
        ),
      ),
    );
  }
}
