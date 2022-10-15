import 'package:flutter/material.dart';
import 'package:mobile_app/models/shop.dart';
import 'package:mobile_app/pages/home_detail_page.dart';
import 'package:mobile_app/widgets/home_widgets/shop_image.dart';
import 'package:mobile_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class ShopList extends StatelessWidget {
  const ShopList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: shopModel.items.length,
        itemBuilder: (context, index) {
          final shop = shopModel.items[index];
          return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeDetailPage(Shop: shop))),
            child: ShopItem(shop: shop),
          );
        });
  }
}

class ShopItem extends StatelessWidget {
  final Item shop;

  const ShopItem({Key? key, required this.shop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(shop.id.toString()) ,
          child: ShopImage(
            image: shop.image,
          ),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            shop.name.text.bold.lg.color(MyTheme.darkbluish).make(),
            shop.desc.text.textStyle(context.captionStyle).make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: Vx.mOnly(right: 15),
              children: [
                "\$${shop.price}".text.bold.xl.make(),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(MyTheme.darkbluish),
                      shape: MaterialStateProperty.all(StadiumBorder())),
                  child: "Buy".text.make(),
                )
              ],
            )
          ],
        ))
      ],
    )).white.roundedLg.square(150).make().py16();
  }
}
