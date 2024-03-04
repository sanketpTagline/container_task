import 'package:flutter/material.dart';

class CircleCustom extends StatelessWidget {
  const CircleCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,

      decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle),
    );
  }
}
