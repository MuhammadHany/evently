import 'dart:async';
import 'package:evently/core/config/routes/PagesRouteName.dart';
import 'package:evently/core/gen/assets.gen.dart';
import 'package:flutter/material.dart';
class SplashView extends StatefulWidget {
  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2),() {
      Navigator.of(context).pushNamedAndRemoveUntil(
          Pagesroutename.onBoardingConfig,
              (route) => false);
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 33),
        child: Center(
          child: Assets.images.logoLight.image(
              color: theme.primaryColor
          ),
        ),
      ),
    );
  }
}