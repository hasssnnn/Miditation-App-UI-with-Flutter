import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/bottom_nav_bar.dart';
import '../widgets/category_list.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context); //media .sizeOf is better
    return Scaffold(
      bottomNavigationBar: const BottomNavBarWidget(),
      body: Stack(
        children: [
          Container(
            height: size.height * .38,
            decoration: const BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                  image: AssetImage("assets/images/undraw_pilates_gpdb.png"),

                  // difference between asset.image    imageAseet
                  fit: BoxFit.fitWidth),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 32,
                      width: 32,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF2BEA1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                  ),

                  //using extension
                  Text(
                    "Good Morning \nMohamed",
                    style: Theme.of(context)
                        .textTheme
                        .displaySmall!
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  Container(
                    height: 40,
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(26),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          icon: SvgPicture.asset('assets/icons/search.svg'),
                          hintText: 'search',
                          border: InputBorder.none),
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .75,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: [
                        CategoryCard(
                          title: "Diet \nRecommendation",
                          svgTitle: "assets/icons/Hamburger.svg",
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Kegel Exercises",
                          svgTitle: "assets/icons/Excrecises.svg",
                          press: () {},
                        ),
                        CategoryCard(
                            title: "Meditation",
                            svgTitle: "assets/icons/Meditation.svg",
                            press: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const DetailsScreen();
                              }));
                            }),
                        CategoryCard(
                          title: "Yoga",
                          svgTitle: "assets/icons/yoga.svg",
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
