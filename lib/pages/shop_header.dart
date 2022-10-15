import 'package:flutter/cupertino.dart';
import 'package:mobile_app/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class ShopHeader extends StatelessWidget {
  const ShopHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color(MyTheme.darkbluish).make(),
        "Trending products".text.xl2.make(),
      ],
    );
  }
}