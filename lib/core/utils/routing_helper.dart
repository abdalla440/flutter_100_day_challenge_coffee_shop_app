import 'package:day_two/features/home_page/presentation/views/home_page.dart';
import 'package:day_two/features/splash_screen/presentation/views/splash_screen.dart';
import 'package:go_router/go_router.dart';

import '../../features/onboarding/presentation/views/onboarding_page.dart';

abstract class AppRouter {
  static const dSplashScreen = '/';
  static const dOnboardingPage = '/OnboardingPage';
  static const dHomePage = '/HomePage';

  static GoRouter router = GoRouter(routes: [
    GoRoute(
      path: dSplashScreen,
      builder: (context, state) =>const  SplashScreenPage(),
    ),
    GoRoute(
      path: dOnboardingPage,
      builder: (context, state) =>const  OnboardingPage(),
    ),
    GoRoute(
      path: dHomePage,
      builder: (context, state) =>const  HomePage(),
    )

  ]);
}
