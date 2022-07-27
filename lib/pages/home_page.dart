import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_app/models/shop.dart';
import 'package:mobile_app/widgets/item_widget.dart';
import '../widgets/drawer.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "ans";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var shopJson = await rootBundle.loadString("assets/files/shop.json");
    print(shopJson);
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => shopModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Mobile Shop App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummyList[index],
              );
            }),
      ),
      drawer: MyDrawer(),
    );
  }
}
