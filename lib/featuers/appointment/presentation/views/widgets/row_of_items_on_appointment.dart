import 'package:flutter/material.dart';
import 'package:medico/core/utils/app_images.dart';
import 'package:medico/featuers/appointment/presentation/views/widgets/item_of_appointment_details.dart';

class RowOfItemsOfAppointment extends StatelessWidget {
  const RowOfItemsOfAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Spacer(),
        ItemOfAppointmentDetails(
          title: "120+",
          subtitle: 'Patients',
          image: Assets.imagesGroup,
        ),
        Spacer(),
        ItemOfAppointmentDetails(
          title: '7+',
          subtitle: 'Years Exp',
          image: Assets.imagesInvest,
        ),
        Spacer(),
        ItemOfAppointmentDetails(
          title: '4.8',
          subtitle: 'Rating',
          image: Assets.imagesStar,
        ),
        Spacer(),
        ItemOfAppointmentDetails(
          title: '100+',
          subtitle: 'Reviews',
          image: Assets.imagesReviews,
        ),
        Spacer(),
      ],
    );
  }
}
