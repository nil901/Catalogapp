import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../model/catalog.dart';
import 'CatalogImage.dart';
import 'add_to_cart.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog})
      : assert(catalog != null);

  @override
  Widget build(Context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(image: catalog.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg.color(Context.accentColor).bold.make(),
            catalog.desc.text.textStyle(Context.captionStyle).make(),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                "\$${catalog.price}".text.xl.bold.make(),
                AddToCart(catalog: catalog)
              ],
            )
          ],
        ))
      ],
    )).color(Context.cardColor).roundedLg.square(150).make().py16();
  }
}

