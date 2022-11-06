import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/presentation/resources/color_manager.dart';
import '../../resources/routes_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  startDelay() => _timer = Timer(const Duration(seconds: 3), callback);
  callback() => Navigator.pushReplacementNamed(context, RouteManager.main);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startDelay();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.splash,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.assignment_ind, color: Colors.white, size: 55,),
            Text(
              "My Resume",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}
