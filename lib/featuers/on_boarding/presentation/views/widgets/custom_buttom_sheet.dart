import 'package:flutter/material.dart';
import 'package:medico/featuers/on_boarding/presentation/views/widgets/column_of_onboarding_container.dart';

class CustomButtomSheet extends StatefulWidget {
  const CustomButtomSheet({super.key});

  @override
  State<CustomButtomSheet> createState() => _CustomButtomSheetState();
}

class _CustomButtomSheetState extends State<CustomButtomSheet> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.45,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          ColumnOfOnBoardingContainer(
            title: 'More Comfortable Chat With the Doctor',
            subTitle:
                'Book an appointment with doctor. Chat with doctor via appointment letter and get consultationt.',
            pageController: pageController,
          ),
          ColumnOfOnBoardingContainer(
            title: 'Smoother Doctor Interaction',
            subTitle:
                'Schedule a doctor’s appointment, chat through the appointment letter, and receive a consultation.',
            pageController: pageController,
          ),
          ColumnOfOnBoardingContainer(
            title: 'Easier Medical Consultation',
            subTitle:
                'Book a medical appointment, communicate with the doctor via the letter,Arrange a consultation ',
            pageController: pageController,
          ),
        ],
      ),
    );
  }
}
