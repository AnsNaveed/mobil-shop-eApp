import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "ans";
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mobile Shop App"),
      ),
      body: Center(
        child: Container(
          child: Text("welcomt to $days days by $name"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
