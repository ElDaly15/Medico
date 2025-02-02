import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medico/core/utils/app_colors.dart';
import 'package:medico/core/utils/app_images.dart';
import 'package:medico/core/utils/app_styles.dart';

class CustomTextSearchField extends StatelessWidget {
  const CustomTextSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextSelectionTheme(
      data: const TextSelectionThemeData(
        cursorColor: AppColors.mainColorTheme,
        selectionColor: Color.fromARGB(255, 146, 146, 218),
        selectionHandleColor: Color.fromARGB(255, 146, 146, 218),
      ),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            borderSide: BorderSide(
                color: const Color(0xffEDEDFC).withOpacity(0.2), width: 1.5),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
                color: const Color(0xffEDEDFC).withOpacity(0.2), width: 1.5),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SvgPicture.asset(
              Assets.imagesSearchNormal,
              width: 20,
              height: 20,
            ),
          ),
          hintText: 'Search Doctor...',
          hintStyle: TextStyles.font20Medium(context).copyWith(
            color: const Color(0xffEDEDFC).withOpacity(0.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            borderSide: BorderSide(
                color: const Color(0xffEDEDFC).withOpacity(0.2), width: 1.5),
          ),
        ),
        cursorColor: AppColors.secondaryColorTheme,
        style: TextStyles.font20Medium(context).copyWith(
          color: Colors.white,
        ),
      ),
    );
  }
}
