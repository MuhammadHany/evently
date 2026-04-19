import 'package:evently/core/config/routes/PagesRouteName.dart';
import 'package:evently/core/config/routes/app_router.dart';
import 'package:evently/core/config/theme/app_theme_manger.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const EventlyApp());
}
class EventlyApp extends StatelessWidget {
  const EventlyApp({super.key});
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      theme:           AppThemeManger.lightTheme(),
      darkTheme:       AppThemeManger.darkTheme(),
      themeMode:       ThemeMode.light,
      initialRoute:    Pagesroutename.initial,
      onGenerateRoute: AppRouter.onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}