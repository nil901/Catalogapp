 import 'package:flutter/material.dart';
import '../../Pages/home_details_page.dart';
import '../../../model/catalog.dart';
import 'CatalogItem.dart';





class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: ((context, index) {
        //final catalog = CatalogModel.items[index]; 
         final catalog = CatalogModel.items[index];
        return InkWell( 
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> Home_details(catalog: catalog,))),
          child: CatalogItem( 
            catalog: catalog));
      }),
    );
  }
}