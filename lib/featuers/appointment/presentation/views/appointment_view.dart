import 'package:flutter/material.dart';
import 'package:medico/featuers/appointment/presentation/views/widgets/appointment_view_body.dart';

class AppointmentView extends StatelessWidget {
  const AppointmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: AppointmentViewBody(),
    );
  }
}
