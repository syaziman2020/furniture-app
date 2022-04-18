import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "User Page",
        style: blackTextStyle.copyWith(
          fontSize: 24,
        ),
      ),
    );
  }
}
