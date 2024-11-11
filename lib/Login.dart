import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 50,
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  label: Text('Enter Username'),
                  hintText: 'Enter Username',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  label: Text('Enter Password'),
                  hintText: 'Enter Password',
                  border: OutlineInputBorder(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: (){}, child: Text('Forgot Password ?')),
                ],
              ),
              SizedBox(height: 10,),
              OutlinedButton(onPressed: (){}, child: Text('Login')),
            ],
          ),
        ),
      ),
    );
  }
}