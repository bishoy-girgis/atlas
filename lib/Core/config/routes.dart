import 'package:atlas/Core/config/page_route_name.dart';
import 'package:atlas/presentation/features/pages/login/login_screen.dart';
import 'package:flutter/material.dart';
import '../../presentation/features/pages/splash/splash_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case PageRouteName.initial:
        return MaterialPageRoute<dynamic>(
            builder: (context) => const SplashView(), settings: routeSettings);
      case PageRouteName.login:
        return MaterialPageRoute(
            builder: (context) =>  const LoginScreen(), settings: routeSettings);
      case PageRouteName.home:
        return MaterialPageRoute(
            builder: (context) =>  const LoginScreen(), settings: routeSettings);
      default:
        return MaterialPageRoute<dynamic>(
            builder: (context) => const SplashView(), settings: routeSettings);
    }
  }
}
