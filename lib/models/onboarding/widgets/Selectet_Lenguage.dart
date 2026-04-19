import 'package:evently/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SelectetLenguage extends StatefulWidget {
  const SelectetLenguage({super.key});

  @override
  State<SelectetLenguage> createState() => _SelectetLenguageState();
}

class _SelectetLenguageState extends State<SelectetLenguage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return  Row(
      children: [
        Expanded(
          child: Text("Language", 
          style: theme.textTheme.titleMedium),
           ),
            Container(
               alignment: Alignment.center,
               height: 32,
                width: 83,
                 child: Text(
                     "English ",
                       style: theme.textTheme.bodyMedium!.copyWith(
                         color: Colors.white,
                         ),
                         ),
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
                               child: Text("Arabic ",
                               style: theme.textTheme.bodyMedium
                               ),
                                decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(8),
                                    ),
                                     ),
                                     ],
                                     );
                                      }
                                      }