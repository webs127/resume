import 'package:flutter/material.dart';
import 'package:resume/presentation/views/subViews/landing_page/landing_page.dart';
import 'package:resume/presentation/views/subViews/skills/skills_page.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {

  int currentIndex = 0;

  onTap(int val) {
    setState(() {
      currentIndex = val;
    });
  }

  List views = [
    const LandingView(),
    const SkillsView()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Resume"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
      body: views[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.task), label: "Skills"),
        ],
      ),
    );
  }
}
