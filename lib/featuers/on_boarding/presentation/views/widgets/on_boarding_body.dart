import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medico/core/utils/app_images.dart';
import 'package:medico/featuers/on_boarding/presentation/views/widgets/custom_buttom_sheet.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Positioned(
            right: 0,
            left: 0,
            bottom: height > 1000 && height < 1200
                ? MediaQuery.of(context).size.height * 0.20
                : height > 1200
                    ? MediaQuery.of(context).size.height * 0.18
                    : MediaQuery.of(context).size.height * 0.21,
            child: Image.asset(
              Assets.imagesDoctor1,
              height: MediaQuery.of(context).size.height * 0.8,
              scale: height > 1000 ? 0.6 : null,
            )),
        Positioned(
            right: 0,
            left: 0,
            child: SvgPicture.asset(
              Assets.imagesTexture,
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height * 0.8,
            )),
        const Column(
          children: [
            Spacer(),
            CustomButtomSheet(),
          ],
        ),
      ],
    );
  }
}
