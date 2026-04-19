import 'package:evently/core/config/routes/PagesRouteName.dart';
import 'package:evently/models/onboarding/on_bording_veiw.dart';
import 'package:evently/models/splash/splash_view.dart';
import 'package:flutter/material.dart';
abstract class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {

      case Pagesroutename.initial:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );

      case Pagesroutename.onBoardingConfig:
        return MaterialPageRoute(
          builder: (context) => const OnBordingVeiw(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const SplashView(),
          settings: settings,
        );

    }
  }
}