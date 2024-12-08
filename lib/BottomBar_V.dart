import 'package:flutter/material.dart';

class BottomTabBarCode extends StatefulWidget {
  const BottomTabBarCode({super.key});

  @override
  _BottomTabBarCodeState createState() => _BottomTabBarCodeState();
}

class _BottomTabBarCodeState extends State<BottomTabBarCode> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram"),
        actions: const [
          Icon(Icons.abc),
          Icon(Icons.home),
        ],
      ),
      body: Builder(
        builder: (context) {
          if (_currentIndex == 0) {
            return const LoginScreen();
          } else if (_currentIndex == 1) {
            return const HomeScreen();
          } else if (_currentIndex == 2) {
            return const HomeScreen();
          } else if (_currentIndex == 3) {
            return const HomeScreen();
          } else {
            return const LoginScreen(); // Default screen if needed
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
