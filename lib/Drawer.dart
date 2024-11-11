import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("timepass"),
        actions: [
          Icon(Icons.logout),
          Icon(Icons.shop)
        ],  
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("Jinit"),
              accountEmail: Text("jinitvyas0107@gmail.com"),
              currentAccountPicture: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.person),
                ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                
              },
            ),
            Divider(height: 1.0,),
            ListTile(
              leading: Icon(Icons.contact_emergency),
              title: Text("Contact"),
              onTap: (){
                
              },
            )
          ],
        ),
      ),
    );
  }
}
