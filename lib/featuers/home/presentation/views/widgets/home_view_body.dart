import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medico/core/utils/app_colors.dart';
import 'package:medico/core/utils/app_images.dart';
import 'package:medico/featuers/home/presentation/views/widgets/column_of_main_container_on_home.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              color: AppColors.mainColorTheme,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.31,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 22),
                child: ColumnOfMainHomeContainer(),
              ),
            ),
            Positioned(
              right: 0,
              left: 0,
              child: SvgPicture.asset(
                Assets.imagesTexture,
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ],
    );
  }
}
