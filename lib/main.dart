import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:medico/featuers/on_boarding/presentation/views/on_boarding_view.dart';

void main() {
  runApp(DevicePreview(enabled: true, builder: (context) => const MedicoApp()));
}

class MedicoApp extends StatelessWidget {
  const MedicoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: const OnBoardingView(),
    );
  }
}
