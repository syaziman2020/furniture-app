import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/currentpage_cubit.dart';

class ItemNavbar extends StatelessWidget {
  final String imageUrl;
  final Function() onTap;
  final int index;
  const ItemNavbar({
    Key? key,
    required this.imageUrl,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: BlocBuilder<CurrentpageCubit, int>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 24,
                height: 3,
                decoration: BoxDecoration(
                  color:
                      (index == state) ? Color(0xffEC9E16) : Colors.transparent,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(4),
                    bottomRight: Radius.circular(4),
                  ),
                ),
              ),
              Image.asset(
                imageUrl,
                width: 24,
                color: (index == state) ? Color(0xffEC9E16) : Color(0xff081D43),
              ),
            ],
          );
        },
      ),
    );
  }
}
