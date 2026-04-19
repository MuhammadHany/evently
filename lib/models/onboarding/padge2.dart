import 'package:evently/core/config/theme/app_colors.dart';
import 'package:evently/core/gen/assets.gen.dart';
import 'package:evently/models/onboarding/padge3.dart';
import 'package:flutter/material.dart';

class Padge2 extends StatefulWidget {
  const Padge2({super.key});

  @override
  State<Padge2> createState() => _Padge2State();
}

class _Padge2State extends State<Padge2> {
  
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
              Assets.images.beingCreative2Light.svg(),
              SizedBox(height: 17),
              Text(
                "Effortless Event Planning",
                style: theme.textTheme.titleLarge!.copyWith(),
              ),
              SizedBox(height: 8),
              Text(
                "Take the hassle out of organizing events with our all-in-one planning tools. From setting up invites and managing RSVPs to scheduling reminders and coordinating details, we’ve got you covered. Plan with ease and focus on what matters – creating an unforgettable experience for you and your guests.",
              style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (_) =>  Padge3(  ),
                  ),
                  (route) => true,
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