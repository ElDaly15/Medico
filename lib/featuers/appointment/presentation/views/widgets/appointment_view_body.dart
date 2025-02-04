import 'package:flutter/material.dart';
import 'package:medico/core/utils/app_styles.dart';
import 'package:medico/featuers/appointment/presentation/views/widgets/container_of_call_doc.dart';
import 'package:medico/featuers/appointment/presentation/views/widgets/container_of_main_doctor_appointment.dart';
import 'package:medico/featuers/appointment/presentation/views/widgets/custom_header.dart';
import 'package:medico/featuers/appointment/presentation/views/widgets/read_more_and_less_widget.dart';
import 'package:medico/featuers/appointment/presentation/views/widgets/row_of_items_on_appointment.dart';

class AppointmentViewBody extends StatelessWidget {
  const AppointmentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SafeArea(
                  child: SizedBox(
                    height: 10,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: HeaderOfAppointment(),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22),
                  child: ContainerOfMainDoctorAppoitnement(),
                ),
                const SizedBox(
                  height: 20,
                ),
                const RowOfItemsOfAppointment(),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Text(
                    'About Me',
                    style: TextStyles.font20SemiBold(context),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const ReadMoreAndLessWidget(),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        const ContainerOfCallDoc(),
      ],
    );
  }
}
