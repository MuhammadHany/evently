import 'package:evently/core/config/theme/app_colors.dart';
import 'package:evently/core/gen/assets.gen.dart';
import 'package:evently/models/onboarding/padge2.dart';
import 'package:flutter/material.dart';

class Padge1 extends StatefulWidget {
  const Padge1({super.key});

  @override
  State<Padge1> createState() => _Padge1State();
}

class _Padge1State extends State<Padge1> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
     return SafeArea(
       child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  SizedBox(width: 90),
                  Assets.images.logoLight.image(width: 140),
                    SizedBox(width: 30),
                    Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), 
             color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
               vertical: (5.5),
               ),
              child: Text(
                "Skip",
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: AppColors.primary,
                ),
              ),
            ),
            ),
            ],
            ),
       //appbar
              SizedBox(height: 24),  
              Assets.images.illusration1Light.svg(),
              SizedBox(height: 17),
              Text(
                "Find Events That Inspire You",
                style: theme.textTheme.titleLarge!.copyWith(),
              ),
              SizedBox(height: 8),
              Text(
                "Dive into a world of events crafted to fit your unique interests. Whether you're into live music, art workshops, professional networking, or simply discovering new experiences, we have something for everyone. Our curated recommendations will help you explore, connect, and make the most of every opportunity around you.",
              style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (_) => Padge2(  ),
                  ),
                  (route) => false,
                );
              },
              child: Text(
                "Next",
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
           ),
     );
  }
}