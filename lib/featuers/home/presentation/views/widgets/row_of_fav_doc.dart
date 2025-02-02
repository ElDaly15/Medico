import 'package:flutter/material.dart';
import 'package:medico/featuers/home/presentation/views/widgets/container_of_fav_doc.dart';

class RowOfFavDoc extends StatelessWidget {
  const RowOfFavDoc({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        children: [
          ContainerOfFavDoc(),
          Spacer(),
          ContainerOfFavDoc(),
        ],
      ),
    );
  }
}
