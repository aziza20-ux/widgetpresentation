import 'package:flutter/material.dart';
import 'package:widgetpresentation/screens/dice.dart';
import 'package:widgetpresentation/screens/form.dart';
import 'package:widgetpresentation/screens/home.dart';

class BottonNav extends StatefulWidget {
  const BottonNav({super.key});

  @override
  State<BottonNav> createState() => _BottonNavState();
}

class _BottonNavState extends State<BottonNav> {
  int myIndex = 0;

  // List of screens to show in bottom navigation
  final List<Widget> screens = [HomeScreen(), RollDiceScreen(), LoginForm()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Using IndexedStack to preserve screen state
      body: IndexedStack(index: myIndex, children: screens),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        currentIndex: myIndex,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Notes',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'Phone',
            backgroundColor: Colors.deepOrange,
          ),
        ],
      ),
    );
  }
}
