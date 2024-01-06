import 'package:flutter/material.dart';

import 'components/onboarding_page_body.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       body: OnboardingPageBody(),
    );
  }
}
