import "package:flutter/material.dart";

import '../../shared/theme.dart';

class ChartPage extends StatelessWidget {
  const ChartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Chart Page",
        style: blackTextStyle.copyWith(
          fontSize: 24,
        ),
      ),
    );
  }
}
