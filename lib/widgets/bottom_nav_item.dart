import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/constants.dart';

class BottomNavItemWidget extends StatelessWidget {
  final bool isActive;

  const BottomNavItemWidget({
    super.key,
    required this.svgTitle,
    required this.title,
    this.press,
    this.isActive = false,
  });
  final String svgTitle;
  final String title;
  final void Function()? press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(svgTitle, color: isActive ? kActiveIconColor : kTextColor),
          Text(
            title,
            style: TextStyle(color: isActive ? kActiveIconColor : kTextColor),
          ),
        ],
      ),
    );
  }
}
