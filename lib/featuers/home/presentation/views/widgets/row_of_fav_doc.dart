import 'package:flutter/material.dart';
import 'package:medico/core/utils/app_images.dart';
import 'package:medico/featuers/home/data/model/doctor_model.dart';
import 'package:medico/featuers/home/presentation/views/widgets/container_of_fav_doc.dart';

class RowOfFavDoc extends StatefulWidget {
  const RowOfFavDoc({super.key});

  @override
  State<RowOfFavDoc> createState() => _RowOfFavDocState();
}

class _RowOfFavDocState extends State<RowOfFavDoc> {
  final List<DoctorModel> favDocs = [
    DoctorModel(
      name: 'Dr. Esther',
      specialty: 'Dentist',
      rate: '4.8',
      image: Assets.imagesDoctor5,
      workAddress: 'New York, USA',
    ),
    DoctorModel(
      name: 'Dr. Warren',
      specialty: 'Physician',
      rate: '4.5',
      image: Assets.imagesDoctor3,
      workAddress: 'New York, USA',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: Row(
        children: [
          ContainerOfFavDoc(
            doctorModel: favDocs[0],
          ),
          const Spacer(),
          ContainerOfFavDoc(
            doctorModel: favDocs[1],
          ),
        ],
      ),
    );
  }
}
