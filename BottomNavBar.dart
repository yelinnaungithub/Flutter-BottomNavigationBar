import 'package:flutter/material.dart';
import 'PageOne.dart';
import 'PageTwo.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  
  int currentIndex = 0;
  final pages = [PageOne(),PageTwo()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex:  currentIndex,
        onTap: (index)=>setState(()=>currentIndex=index),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.live_tv),label:'Live'),
          BottomNavigationBarItem(icon: Icon(Icons.score),label:'Score'),
        ]
        ),
    );
  }
}