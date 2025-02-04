import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:medico/core/utils/app_colors.dart';
import 'package:medico/core/utils/app_styles.dart';

class ContainerOfCallDoc extends StatelessWidget {
  const ContainerOfCallDoc({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 12,
            offset: const Offset(0, 1),
          ),
        ],
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(22),
          topRight: Radius.circular(22),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 60),
              backgroundColor: AppColors.mainColorTheme,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16))),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                IconlyLight.call,
                size: 26,
                color: Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'Voice Call (14.30 - 15.00 PM)',
                  style: TextStyles.font20Bold(context)
                      .copyWith(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
