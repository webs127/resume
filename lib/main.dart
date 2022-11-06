import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:resume/presentation/resources/routes_manager.dart';
import 'package:resume/presentation/resources/theme_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((value) => runApp(const MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeData _selectedTheme = ThemeData();
  Timer? _timer;
  _selectTheme() {
    DateTime now = DateTime.now();
    DateTime darkThemeStartTime = DateTime(now.year, now.month, now.day, 19);
    DateTime darkThemeEndTime = DateTime(now.year, now.month, now.day, 6);
    int timerSeconds;
    if (now.compareTo(darkThemeEndTime) > 0 && now.compareTo(darkThemeStartTime) < 0) {
      _selectedTheme = ThemeManager.lightTheme;
      timerSeconds = darkThemeStartTime.difference(now).inSeconds;
    } else if(now.compareTo(darkThemeStartTime) > 0) {
      _selectedTheme = ThemeManager.darkTheme;
      DateTime nextDayMorningTime = darkThemeStartTime.add(const Duration(days: 1));
      timerSeconds = nextDayMorningTime.difference(now).inSeconds;
    } else {
      _selectedTheme = ThemeManager.darkTheme;
      timerSeconds = darkThemeEndTime.difference(now).inSeconds;
    }
    _timer = Timer(
      Duration(seconds: timerSeconds),
          () {
        _selectTheme();
        setState(() {});
      },
    );

  }
  @override
  void initState() {
    super.initState();
    _selectTheme();
  }
  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Resume',
        debugShowCheckedModeBanner: false,
        onGenerateRoute: Routes.getRoutes,
        initialRoute: RouteManager.splash,
      theme: _selectedTheme,
    );
  }
}
