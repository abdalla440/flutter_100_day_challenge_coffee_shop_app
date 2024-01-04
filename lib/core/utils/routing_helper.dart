import 'package:day_two/features/splash_screen/presentation/views/splash_screen.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const dSplashScreen = '/';

  static GoRouter router = GoRouter(routes: [
    GoRoute(
      path: dSplashScreen,
      builder: (context, state) =>const  SplashScreenPage(),
    )
  ]);
}
