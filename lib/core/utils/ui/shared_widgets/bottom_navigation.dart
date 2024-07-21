import 'package:countries_demo/core/utils/images.dart';

import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatefulWidget {
  final PageController pageController;
  const CustomBottomNavigation({Key? key, required this.pageController})
      : super(key: key);

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: const Color(0xff090F16),
      currentIndex: currentIndex,
      showUnselectedLabels: false,
      selectedFontSize: 10,
      unselectedFontSize: 8,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.w500,
        fontFamily: 'SF',
        color: Colors.white,
        fontSize: 10,
      ),
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            Images.allCountriesIcon,
            scale: 16,
            color: Colors.white.withOpacity(.5),
          ),
          activeIcon: Image.asset(
            Images.allCountriesIcon,
            scale: 16,
            color: Colors.white,
          ),
          label: 'All',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            Images.visitedIcon,
            scale: 16,
            color: Colors.white.withOpacity(.5),
          ),
          activeIcon: Image.asset(
            Images.visitedIcon,
            scale: 16,
            color: Colors.white,
          ),
          label: 'Visited',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            Images.favouriteIcon,
            scale: 16,
            color: Colors.white.withOpacity(.5),
          ),
          activeIcon: Image.asset(
            Images.favouriteIcon,
            scale: 16,
            color: Colors.white,
          ),
          label: 'Favourite',
        ),
      ],
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
        widget.pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.ease,
        );
      },
    );
  }
}
