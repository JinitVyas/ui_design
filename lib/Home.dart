import 'package:flutter/material.dart';
import 'package:ui_design/Register.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            
          }, icon: Icon(Icons.login)),
          IconButton(onPressed: (){}, icon: Icon(Icons.app_registration_rounded)),
        ],
        title: Text('AppBAr'),
        backgroundColor: Colors.amber,
      ),
    );
  }
}