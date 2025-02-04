import 'package:flutter/material.dart';
import 'package:medico/featuers/appointment/presentation/views/widgets/container_of_main_doctor_appointment.dart';
import 'package:medico/featuers/appointment/presentation/views/widgets/custom_header.dart';

class AppointmentViewBody extends StatelessWidget {
  const AppointmentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SafeArea(
          child: SizedBox(
            height: 10,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: HeaderOfAppointment(),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: ContainerOfMainDoctorAppoitnement(),
        ),
      ],
    );
  }
}
