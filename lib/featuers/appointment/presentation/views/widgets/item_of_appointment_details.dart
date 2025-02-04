import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medico/core/utils/app_colors.dart';
import 'package:medico/core/utils/app_styles.dart';

class ItemOfAppointmentDetails extends StatelessWidget {
  const ItemOfAppointmentDetails(
      {super.key,
      required this.title,
      required this.image,
      required this.subtitle});
  final String title, image, subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: AppColors.secondaryColorTheme,
          child: SvgPicture.asset(
            image,
            width: 28,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          title,
          style: TextStyles.font20SemiBold(context).copyWith(),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          subtitle,
          style: TextStyles.font18Regular(context).copyWith(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
