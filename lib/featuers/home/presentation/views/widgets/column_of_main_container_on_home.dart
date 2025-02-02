import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medico/core/utils/app_images.dart';
import 'package:medico/featuers/home/presentation/views/widgets/custom_text_search_field.dart';
import 'package:medico/featuers/home/presentation/views/widgets/row_of_main_home_container.dart';

class ColumnOfMainHomeContainer extends StatelessWidget {
  const ColumnOfMainHomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 0,
          left: 0,
          child: SvgPicture.asset(
            Assets.imagesTexture,
            fit: BoxFit.cover,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              SafeArea(
                child: SizedBox(
                  height: 20,
                ),
              ),
              RowOfMainHomeContainer(),
              SizedBox(height: 30),
              CustomTextSearchField(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ],
    );
  }
}
