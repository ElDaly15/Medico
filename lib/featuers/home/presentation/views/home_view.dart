import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:medico/core/utils/app_colors.dart';
import 'package:medico/featuers/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int index = 0;
  Duration animationDuration = const Duration(milliseconds: 300);
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          HomeViewBody(),
          HomeViewBody(),
          HomeViewBody(),
          HomeViewBody()
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(0, IconlyBold.home, IconlyLight.home),
            _buildNavItem(1, IconlyBold.calendar, IconlyLight.calendar),
            _buildNavItem(2, IconlyBold.message, IconlyLight.message),
            _buildNavItem(3, IconlyBold.profile, IconlyLight.profile),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(
      int itemIndex, IconData selectedIcon, IconData unselectedIcon) {
    bool isSelected = index == itemIndex;
    return GestureDetector(
      onTap: () {
        setState(() {
          index = itemIndex;
          pageController.jumpToPage(itemIndex);
        });
      },
      child: AnimatedContainer(
        duration: animationDuration,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.mainColorTheme.withOpacity(0.2)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: AnimatedSwitcher(
          duration: animationDuration,
          transitionBuilder: (Widget child, Animation<double> animation) {
            return ScaleTransition(scale: animation, child: child);
          },
          child: Icon(
            isSelected ? selectedIcon : unselectedIcon,
            key: ValueKey<bool>(isSelected),
            color: isSelected ? AppColors.mainColorTheme : Colors.black,
          ),
        ),
      ),
    );
  }
}
