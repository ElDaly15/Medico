import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medico/core/utils/app_images.dart';
import 'package:medico/core/utils/app_styles.dart';

class RowOfMainHomeContainer extends StatelessWidget {
  const RowOfMainHomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Image.asset(
            Assets.imagesMen,
            scale: 15,
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, Welcome  🎉',
              style: TextStyles.font20Regular(context)
                  .copyWith(color: Colors.white),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Savannah Nguyen',
              style: TextStyles.font24SemiBold(context)
                  .copyWith(color: Colors.white),
            ),
          ],
        ),
        const Spacer(),
        Stack(
          children: [
            SvgPicture.asset(
              Assets.imagesBell,
              width: 30,
            ),
            Positioned(
              right: 2,
              top: 0,
              child: Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Color(0xffFF0000),
                  shape: BoxShape.circle,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
