import 'package:flutter/material.dart';
import 'package:resume/presentation/views/mainview/main_view.dart';
import '../views/splash/splash.dart';
import '../views/subViews/landing_page/landing_page.dart';

class RouteManager {
  static const String splash = "/";
  static const String landing = "/landing";
  static const String main = "/main";
}

class Routes {
  static Route<dynamic> getRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteManager.splash:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case RouteManager.landing:
        return MaterialPageRoute(builder: (_) => const LandingView());
      case RouteManager.main:
        return MaterialPageRoute(builder: (_) => const MainView());
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
