import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation_app/constants.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.svgTitle,
    required this.title, required this.press,
  });
  final String svgTitle;
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(13),
      child: Container(
        // padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: const [
            BoxShadow(
                offset: Offset(0, 8),
                blurRadius: 12,
                spreadRadius: -12,
                color: kShadowColor),
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  const Spacer(),
                  SvgPicture.asset(
                    svgTitle,
                  ),
                  const Spacer(),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
