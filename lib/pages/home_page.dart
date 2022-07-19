import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

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
          child: Text("welcomt to $days dayss by $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
