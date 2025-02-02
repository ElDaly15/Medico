import 'package:flutter/material.dart';
import 'package:medico/core/utils/app_images.dart';
import 'package:medico/core/utils/app_styles.dart';

class ContainerOfFavDoc extends StatelessWidget {
  const ContainerOfFavDoc({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
            child: Image.asset(Assets.imagesDoctor5),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Text('Dr. Esther', style: TextStyles.font18SemiBold(context)),
                const Spacer(),
                const Icon(
                  Icons.star,
                  color: Colors.yellow,
                  size: 20,
                ),
                Text('4.8', style: TextStyles.font14SemiBold(context)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Dentist',
              style:
                  TextStyles.font18Medium(context).copyWith(color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
