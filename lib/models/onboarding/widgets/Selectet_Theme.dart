import 'package:evently/core/config/theme/app_colors.dart';
import 'package:evently/core/gen/assets.gen.dart';
import 'package:flutter/material.dart';
class SelectedTheme extends StatefulWidget {
  const SelectedTheme({super.key});

  @override
  State<SelectedTheme> createState() => _SelectedThemeState();
}

class _SelectedThemeState extends State<SelectedTheme> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return  Row(
              children: [
                Expanded(
                  child: Text("Theme",
                   style: theme.textTheme.titleMedium),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 32,
                  width: 83,
                  child: Assets.icons.sun.svg(),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),

                SizedBox(width: 8),

                Container(
                  alignment: Alignment.center,
                  height: 32,
                  width: 83,
                  child: Assets.icons.moon.svg(),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ],
            );
  }
}