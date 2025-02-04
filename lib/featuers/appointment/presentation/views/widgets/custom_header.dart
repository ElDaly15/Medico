import 'package:flutter/material.dart';
import 'package:medico/core/utils/app_styles.dart';

class HeaderOfAppointment extends StatelessWidget {
  const HeaderOfAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          padding: const EdgeInsets.all(0),
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
        const Spacer(),
        Text(
          'Appointment',
          style: TextStyles.font24SemiBold(context),
        ),
        const Spacer(),
      ],
    );
  }
}
