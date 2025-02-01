import 'package:flutter/material.dart';
import 'package:medico/core/utils/app_colors.dart';
import 'package:medico/core/utils/app_styles.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ColumnOfOnBoardingContainer extends StatefulWidget {
  const ColumnOfOnBoardingContainer(
      {super.key,
      required this.pageController,
      required this.title,
      required this.subTitle});
  final PageController pageController;
  final String title, subTitle;
  @override
  State<ColumnOfOnBoardingContainer> createState() =>
      _ColumnOfOnBoardingContainerState();
}

class _ColumnOfOnBoardingContainerState
    extends State<ColumnOfOnBoardingContainer> {
  int index = 0;
  @override
  void initState() {
    super.initState();
    widget.pageController.addListener(_pageControllerListener);
  }

  void _pageControllerListener() {
    if (mounted) {
      setState(() {
        index = widget.pageController.page?.round() ?? 0;
      });
    }
  }

  @override
  void dispose() {
    widget.pageController.removeListener(_pageControllerListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Text(
            widget.title,
            style: TextStyles.font24SemiBold(context).copyWith(fontSize: 24),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 7),
          Text(
            widget.subTitle,
            style: TextStyles.font20Regular(context)
                .copyWith(color: const Color.fromARGB(255, 136, 136, 136)),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          SmoothPageIndicator(
              controller: widget.pageController, // PageController
              count: 3,
              effect: const ExpandingDotsEffect(
                dotHeight: 8,
                dotWidth: 8,
              ), // your preferred effect
              onDotClicked: (index) {}),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 0),
              minimumSize: const Size(double.infinity, 60),
              backgroundColor: AppColors.mainColorTheme,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: () {
              widget.pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            child: Text(
              index == 2 ? 'Get Started' : 'Next',
              style: TextStyles.font20SemiBold(context).copyWith(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
