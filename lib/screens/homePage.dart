import 'package:flutter/material.dart';
import 'package:project/screens/BottomNavigationBar.dart';
import 'package:project/screens/Calss2.dart';
import 'package:project/screens/FontsizeControler.dart';
import 'package:project/screens/Inc/DecInteger.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex = 0;
  navigationBarFunc(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> pages = [
    MyLearning(),
    Assignment(),
    Dashboard(),
    profileSTL()
  ];
  int selectIndex = 0;
  void NavigationBArFunc(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  bool buttonSwitch = false;
  Color scaffoldColor() {
    return buttonSwitch ? Colors.black : Colors.white;
  }

  Color textColor() {
    return buttonSwitch ? Colors.black : Colors.white70;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          backgroundColor: Color.fromARGB(255, 109, 104, 158),
          currentIndex: selectedIndex,
          onTap: navigationBarFunc,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.message_outlined), label: 'Messages'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Settings'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ]),
    );
  }
}
