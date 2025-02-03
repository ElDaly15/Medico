import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconly/iconly.dart';
import 'package:medico/core/utils/app_images.dart';
import 'package:medico/core/utils/app_styles.dart';
import 'package:get/get.dart' as g;
import 'package:medico/featuers/appointment/presentation/views/appointment_view.dart';

class ContainerOfTopDoctor extends StatelessWidget {
  const ContainerOfTopDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        g.Get.to(() => const AppointmentView(),
            transition: g.Transition.fade,
            duration: const Duration(milliseconds: 500));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start, // Push content up
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  Assets.imagesDoctor6,
                  fit: BoxFit.cover,
                  scale: 2.9,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Dr. Jenny Wilson',
                            style: TextStyles.font24SemiBold(context),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: SvgPicture.asset(
                            Assets.imagesMore,
                            height: 24,
                            width: 24,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Neurologist | Vcare Clinic',
                      style: TextStyles.font18Regular(context)
                          .copyWith(color: Colors.grey),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const Icon(IconlyBold.star,
                            color: Color.fromARGB(255, 219, 199, 18)),
                        const SizedBox(width: 5),
                        Text(
                          '4.8',
                          style: TextStyles.font20SemiBold(context),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          '(322 reviews)',
                          style: TextStyles.font18Regular(context)
                              .copyWith(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
