import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
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
    await Future.delayed(Duration(seconds: 2));
    final shopJson = await rootBundle.loadString("assets/files/shop.json");
    final decodedData = jsonDecode(shopJson);
    var productsData = decodedData["products"];
    shopModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobile Shop App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (shopModel.items != null && shopModel.items.isNotEmpty)
            ? ListView.builder(
                itemCount: shopModel.items.length,
                itemBuilder: (context, index) {
                  return ItemWidget(
                    item: shopModel.items[index],
                  );
                },
              )
            : const Center( 
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }
}
