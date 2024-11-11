import 'package:flutter/material.dart';
import 'package:ui_design/Calc.dart';
import 'package:ui_design/Drawer.dart';
import 'package:ui_design/Listview.dart';
import 'package:ui_design/Login.dart';

class TabBarCode extends StatelessWidget {
  const TabBarCode({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Instagram"),
          actions: [
            const Icon(Icons.abc),
            const Icon(Icons.home)
          ],
          bottom: const TabBar(
            labelColor: Colors.red,
            indicatorColor: Colors.blue,
            indicatorSize:TabBarIndicatorSize.tab,

            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
                
              ),
              Tab(
                icon: Icon(Icons.search),
                text: "Explore",
              ),
              Tab(
                icon: Icon(Icons.add),
                text: "Post",
              ),
              Tab(
                icon: Icon(Icons.movie),
                text: "Reels",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "Account",
              ),
            ]
          ),
        ),
        body: const TabBarView(
          children: [
            Login(),
            Calc(),
            Listview(),
            MyDrawer(),
            TabBarCode()
          ]
        ),
      )
    );
  }
}