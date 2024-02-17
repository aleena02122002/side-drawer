import 'package:flutter/material.dart';

class account extends StatelessWidget {
  const account({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: Text("Account"),
        ),
      ),
    );
  }
}
