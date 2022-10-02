import 'package:flutter/material.dart';
import 'package:orchid/features/feature/core/router/routes.dart';
import 'package:orchid/features/feature/presentation/pages/error/error_page.dart';
import 'package:orchid/features/feature/presentation/pages/home/home_page.dart';

class CustomRouter {
  static Route<dynamic> generateRoute(
      RouteSettings settings, BuildContext context) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const ErrorPage(),
        );
    }
  }
}
