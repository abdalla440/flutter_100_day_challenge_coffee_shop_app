import 'package:day_two/core/utils/assets_helper.dart';
import 'package:day_two/core/utils/color_helper.dart';
import 'package:flutter/material.dart';

class SplashScreenBody extends StatelessWidget {
  const SplashScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(

        decoration:  const BoxDecoration(
          color: ColorHelper.splashMilkyColor
              ,image: DecorationImage(image: AssetImage(AssetsHelper.splashImagePath))
        ),
      ),
    );
  }
}
