import 'package:flutter/material.dart';

class TopIconButton extends StatelessWidget {
  final String iconUrl;
  final Function() onTap;
  const TopIconButton({
    Key? key,
    required this.iconUrl,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Image.asset(
            iconUrl,
            fit: BoxFit.cover,
            width: 24,
          ),
        ),
      ),
    );
  }
}
