

import 'package:flutter/material.dart'; 
 import 'package:velocity_x/velocity_x.dart';

import '../themes.dart';

 class CatalogImage extends StatelessWidget {
  @override
  final String image;

  const CatalogImage({super.key, required this.image});
  Widget build(Context) {
    return Image.network(image)
        .box
        .rounded
        .p8
        .color(Context.canvasColor)
        .make()
        .p16()
        .w40(Context);
  }
}
