import 'package:day_two/core/utils/assets_helper.dart';
import 'package:day_two/core/utils/color_helper.dart';
import 'package:day_two/core/utils/routing_helper.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({super.key});

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody> {
  @override
  void initState() {
    super.initState();
    navigateToHome();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        GoRouter.of(context).replace(AppRouter.dOnboardingPage);
      },
    );

  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: const BoxDecoration(
            color: ColorHelper.splashMilkyColor,
            image: DecorationImage(
              image: AssetImage(
                AssetsHelper.splashImagePath,
              ),
            )),
      ),
    );
  }
}
