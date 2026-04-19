import 'package:evently/core/config/theme/app_colors.dart';
import 'package:evently/core/gen/assets.gen.dart';
import 'package:evently/models/onboarding/widgets/Selectet_Lenguage.dart';
import 'package:evently/models/onboarding/widgets/Selectet_Theme.dart';
import 'package:evently/models/onboarding/padge1.dart';
import 'package:flutter/material.dart';
class OnBordingVeiw extends StatefulWidget {
  const OnBordingVeiw({super.key});
  @override
  State<OnBordingVeiw> createState() => _OnBordingVeiwState();
}
class _OnBordingVeiwState extends State<OnBordingVeiw> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Assets.images.logoLight.image(width: 140)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Assets.images.onBoardingConfigImg.svg(),
            SizedBox(height: 24),
            Text(
              "Personalize Your Experience",
              style: theme.textTheme.titleLarge,
            ),
            SizedBox(height: 8),
            Text(
              "Choose your preferred theme and\n language to get started with a \ncomfortable, tailored experience that suits your style.",
              style: theme.textTheme.bodyLarge,
            ),
            SizedBox(height: 19),
            SelectetLenguage(),
             SizedBox(height: 16),
            SelectedTheme(),
            SizedBox(height: 24),

            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (_) => Padge1(),
                  ),
                  (route) => false,
                );
              },
              child: Text(
                "Let’s start",
                style: theme.textTheme.titleLarge!.copyWith(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                backgroundColor: AppColors.primary,
            ),
              ),
          ],
        ),
      ),
    );
  }
}
