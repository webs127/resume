import 'package:flutter/material.dart';
import '../views/landing_page/landing_page.dart';
import '../views/splash/splash.dart';

class RouteManager {
  static const String splash = "/";
  static const String landing = "/landing";
}

class Routes {
  static Route<dynamic> getRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteManager.splash:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case RouteManager.landing:
        return MaterialPageRoute(builder: (_) => const LandingView());
      default:
        return unDefined();
    }
  }

  static Route<dynamic> unDefined() => MaterialPageRoute(
      builder: (_) => const Scaffold(
            body: Center(
              child: Text("No Route Found"),
            ),
          ));
}
