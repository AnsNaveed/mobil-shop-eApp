import 'package:flutter/material.dart';
import 'package:mobile_app/models/shop.dart';
import 'package:mobile_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item Shop;

  const HomeDetailPage({Key? key, required this.Shop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        backgroundColor: MyTheme.creamColor,
        bottomNavigationBar: Container(
          color: Colors.white,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            buttonPadding: Vx.mOnly(right: 15),
            children: [
              "\$${Shop.price}".text.bold.xl4.red800.make(),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(MyTheme.darkbluish),
                    shape: MaterialStateProperty.all(StadiumBorder())),
                child: "Buy".text.make(),
              ).wh(100, 40),
            ],
          ).p32(),
        ),
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                tag: Key(Shop.id.toString()),
                child: Image.network(Shop.image),
              ).h32(context),
              Expanded(
                  child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                    color: Colors.white,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        Shop.name.text.bold.xl4
                            .color(MyTheme.darkbluish)
                            .make(),
                        Shop.desc.text
                            .textStyle(context.captionStyle)
                            .xl
                            .make(),
                        10.heightBox,
                      ],
                    ).py64()),
              ))
            ],
          ),
        ));
  }
}
