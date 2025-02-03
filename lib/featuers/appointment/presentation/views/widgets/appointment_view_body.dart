import 'package:flutter/material.dart';
import 'package:medico/featuers/appointment/presentation/views/widgets/custom_header.dart';

class AppointmentViewBody extends StatelessWidget {
  const AppointmentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          SafeArea(
            child: SizedBox(
              height: 10,
            ),
          ),
          HeaderOfAppointment(),
        ],
      ),
    );
  }
}
