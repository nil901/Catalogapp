import 'package:flutter/material.dart';

import '../../model/catalog.dart';


class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext) {
    return Card(
      elevation: 0.0,
      child: ListTile(
          onTap: () {
            print("${item.name} press");
          },
          leading: Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text(
            "\$${item.price} ",
            style: TextStyle(color: Colors.yellow, fontWeight: FontWeight.bold),
          )),
    );
  }
}
