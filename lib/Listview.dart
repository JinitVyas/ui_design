import 'package:flutter/material.dart';

class Listview extends StatefulWidget {
  const Listview({super.key});

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.person),
                    title: Text(
                      'Jinit',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Hey, how's it going?"),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '10:30 AM',
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        SizedBox(height: 5),
                        Icon(
                          Icons.done_all,
                          color: Colors.blue,
                          size: 18,
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                height: 1.0,
              );
            },
            itemCount: 5));
  }
}
