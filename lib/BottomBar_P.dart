import 'package:flutter/material.dart';
import 'package:prac_1/home.dart';
import 'package:prac_1/login2.dart';
import 'package:prac_1/register.dart';

class BottomTabBarCode extends StatefulWidget {
  const BottomTabBarCode({super.key});

  @override
  BottomTabBarCodeState createState() => BottomTabBarCodeState();
}

class BottomTabBarCodeState extends State<BottomTabBarCode> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Instagram"),
        actions: const [
          Icon(Icons.abc),
          Icon(Icons.home),
        ],
      ),
      body: Builder(
        builder: (context) {
          if (currentIndex == 0) {
            return const LoginScreen();
          } else if (currentIndex == 1) {
            return const RegisterScreen();
          } else if (currentIndex == 2) {
            return const LoginScreen();
          } else if (currentIndex == 3) {
            return const Home();
          } else {
            return const Center(
              child: Text("Page not found"),
            );
          }
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            currentIndex = index;
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
