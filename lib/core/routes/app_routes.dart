import 'package:flutter/material.dart';
import 'package:task1w2/core/utils/app_constants.dart';
import 'package:task1w2/features/home_page/presentation/screens/home_page.dart';
import 'package:task1w2/features/calculating_result/presentation/Screens/result_screen.dart';

class AppRoutes {
  Route? routeNavigate(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case resultScreen:
        final bmiResult = settings.arguments as double;
        return MaterialPageRoute(
          builder: (context) => ResultScreen(result: bmiResult),
        );
      default:
        return null;
    }
  }
}
