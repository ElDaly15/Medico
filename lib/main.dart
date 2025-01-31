import 'package:flutter/material.dart';

void main() {
  runApp(const MedicoApp());
}

class MedicoApp extends StatelessWidget {
  const MedicoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Text(
            'Hello World!',
            style: TextStyle(fontFamily: 'Inter'),
          ),
        ),
      ),
    );
  }
}
