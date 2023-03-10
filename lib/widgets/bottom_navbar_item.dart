import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class BottomNavbarItem extends StatelessWidget {
  final String imageUrl;
  final bool isActive;

  const BottomNavbarItem(
      {required this.imageUrl, required this.isActive, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Image.asset(imageUrl, width: 26),
        const Spacer(),
        isActive
            ? Container(
                width: 30,
                height: 2,
                decoration: const BoxDecoration(
                    color: Color(0xff7F74EB),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(1000),
                    )),
              )
            : Container()
      ],
    );
  }
}
