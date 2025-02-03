import 'package:flutter/material.dart';
import 'package:medico/core/utils/app_styles.dart';
import 'package:medico/featuers/appointment/presentation/views/appointment_view.dart';
import 'package:medico/featuers/home/data/model/doctor_model.dart';
import 'package:get/get.dart' as g;

class ContainerOfFavDoc extends StatelessWidget {
  const ContainerOfFavDoc({super.key, required this.doctorModel});
  final DoctorModel doctorModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        g.Get.to(() => const AppointmentView(),
            transition: g.Transition.fade,
            duration: const Duration(milliseconds: 500));
      },
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.41,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 252, 251, 251),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Image.asset(
                doctorModel.image,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Text(doctorModel.name,
                      style: TextStyles.font18SemiBold(context)),
                  const Spacer(),
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                  Text(doctorModel.rate,
                      style: TextStyles.font14SemiBold(context)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                doctorModel.specialty,
                style: TextStyles.font18Medium(context)
                    .copyWith(color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
