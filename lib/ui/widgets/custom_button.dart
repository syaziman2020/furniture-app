import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class ButtonCustom extends StatelessWidget {
  final String title;
  final Function() onTap;
  const ButtonCustom({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 30, 0, 10),
      height: 64,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onTap,
        child: Text(
          title,
          style: blackTextStyle.copyWith(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(yellowC),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ),
    );
  }
}
