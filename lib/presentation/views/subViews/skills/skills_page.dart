import 'package:flutter/material.dart';

class SkillsView extends StatefulWidget {
  const SkillsView({Key? key}) : super(key: key);

  @override
  State<SkillsView> createState() => _SkillsViewState();
}

class _SkillsViewState extends State<SkillsView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Text(" My Skills: Flutter/Dart",style: TextStyle(
          fontFamily: "Poppins",
          fontSize: 28,
          fontWeight: FontWeight.w400),),
    );
  }
}
