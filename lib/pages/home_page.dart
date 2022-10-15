import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mobile_app/models/shop.dart';
import 'package:mobile_app/pages/shop_header.dart';
import 'package:mobile_app/utilis/routes.dart';
import 'package:mobile_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/home_widgets/shop_image.dart';
import '../widgets/home_widgets/shop_list.dart';
import 'home_detail_page.dart';

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
    await Future.delayed(const Duration(seconds: 2));
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
        appBar: AppBar(),
        backgroundColor: MyTheme.creamColor,
        body: SafeArea(
          child: Container(
              padding: const EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ignore: prefer_const_constructors
                  ShopHeader(),
                  if (shopModel.items != null && shopModel.items.isNotEmpty)
                    const ShopList().py16().expand()
                  else
                    const Center(
                      child: CircularProgressIndicator(),
                    )
                ],
              )),
        ));
  }
}
