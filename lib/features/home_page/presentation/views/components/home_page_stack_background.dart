import 'package:flutter/material.dart';

class HomePageStackBackground extends StatelessWidget {
  const HomePageStackBackground({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: screenHeight * 0.35,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xff313131),
                Color(0xff131313),
              ],
            ),
          ),
        ),
        Container(
          color: const Color(0xffF9F9F9),
        )
      ],
    );
  }
}
