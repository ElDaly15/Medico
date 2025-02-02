import 'package:flutter/material.dart';
import 'package:medico/core/utils/app_colors.dart';
import 'package:medico/core/utils/app_styles.dart';

class ContainerOfSelectCategory extends StatelessWidget {
  const ContainerOfSelectCategory(
      {super.key, required this.title, required this.isActive});
  final String title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        color: isActive
            ? AppColors.mainColorTheme
            : const Color(0xffEDEDFC).withOpacity(0.4),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 7),
      child: Center(
        child: Text(
          title,
          style: TextStyles.font18Medium(context)
              .copyWith(color: isActive ? Colors.white : Colors.grey),
        ),
      ),
    );
  }
}
