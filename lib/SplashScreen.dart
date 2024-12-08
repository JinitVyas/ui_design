import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ui_design/Tab.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  void initstate(){
    super.initState();  
    Timer(Duration(seconds: 3), (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> TabBarCode()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Splash"))
    );
  }
}