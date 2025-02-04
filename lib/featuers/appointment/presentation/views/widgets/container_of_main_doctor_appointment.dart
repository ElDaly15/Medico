import 'package:flutter/material.dart';
import 'package:medico/core/utils/app_images.dart';
import 'package:medico/core/utils/app_styles.dart';

class ContainerOfMainDoctorAppoitnement extends StatelessWidget {
  const ContainerOfMainDoctorAppoitnement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 12,
            offset: const Offset(0, 1),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            child: Image.asset(
              width: double.infinity,
              Assets.imagesDoctor6,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text('Dr. Jenny Wilson',
                    style: TextStyles.font24SemiBold(context)),
                const Spacer(),
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 25,
                ),
                Text('5.0', style: TextStyles.font18SemiBold(context)),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  '(322 reviews)',
                  style: TextStyles.font14SemiBold(context).copyWith(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              'Neurologist | Vcare Clinic',
              style:
                  TextStyles.font18Medium(context).copyWith(color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
