import 'package:flutter/material.dart';
import 'package:medico/featuers/home/presentation/views/widgets/row_of_main_home_container.dart';

class ColumnOfMainHomeContainer extends StatelessWidget {
  const ColumnOfMainHomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SafeArea(
          child: SizedBox(
            height: 20,
          ),
        ),
        RowOfMainHomeContainer(),
        CustomTextSearchField(),
      ],
    );
  }
}

class CustomTextSearchField extends StatelessWidget {
  const CustomTextSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
