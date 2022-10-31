import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';
import '../Utils/Routes.dart';
import '../../model/catalog.dart';
import '../../widgets/home_widgets/CatalogHeder.dart';
import '../../widgets/home_widgets/CatalogList.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final int days = 30;
  final String Name = "Nilesh";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loaddata();
  }

  loaddata() async {
    try {
      await Future.delayed(Duration(seconds: 2));
      final catalogjson = await rootBundle.loadString("images/catalog.json");
      final decodeData = jsonDecode(catalogjson);
      final productData = decodeData["Product"];
      // List<Item> list = List.from(productData).map(<item>(item) => Item.fromMap(item)).toList();
      CatalogModel.items = List.from(productData)
          .map<Item>((item) => Item.fromMap(item))
          .toList();
      setState(() {});
      //print(productData);
     //print(decodeData);

      // var incodeData = jsonEncode(decodeData);
    } on Exception catch (e) {
      print("file not found");
    }
  }

  @override
  Widget build(BuildContext) {
    // final dummylist = List.generate(5, (index) => CatalogModel.items[0]);

    return Scaffold( 
      //backgroundColor:  Mythemes.creamColor, 
        backgroundColor: context.canvasColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context,Myroutes.CartRoute),   
      backgroundColor: context.theme.buttonColor,
    
        child: Icon(CupertinoIcons.cart,color: Colors.white,),
       ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeder(),
              if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                CatalogList().py16().expand()
              else
               
                   CircularProgressIndicator().centered().py16().expand(),
                
            ],
          ),
        ),
      ),
    );
  }
}







