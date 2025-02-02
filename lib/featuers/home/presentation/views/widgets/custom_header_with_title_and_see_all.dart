import 'package:flutter/material.dart';
import 'package:medico/core/utils/app_colors.dart';
import 'package:medico/core/utils/app_styles.dart';

class CustomHeaderWithTitleAndSeeAll extends StatelessWidget {
  const CustomHeaderWithTitleAndSeeAll({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyles.font24SemiBold(context),
          ),
          const Spacer(),
          TextButton(
            onPressed: () {},
            child: Text(
              'See All',
              style: TextStyles.font18Medium(context)
                  .copyWith(color: AppColors.mainColorTheme),
            ),
          ),
        ],
      ),
    );
  }
}
