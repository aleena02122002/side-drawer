import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:project2/account.dart';
import 'package:project2/setting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent[200],
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.deepPurpleAccent[100],
            child: ListView(children: [
              const DrawerHeader(
                child: CircleAvatar(
                    child: ClipOval(
                      child: Image(
                        image: AssetImage('images/logo.jpg'),
                        fit: BoxFit.cover,
                      ),
                    )
                ),
              ),
              ListTile(
                leading: const Icon(Icons.account_box),
                title: const Text(
                  "Profile",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const account()));
                },
              ),
              const Divider(
                thickness: 1,
              ),
              ListTile(
                leading: const Icon(Icons.notifications),
                title: const Text(
                  "Notification",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const account()));
                },
              ),
              const Divider(
                thickness: 1,
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text(
                  "Setting",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const setting()));
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
