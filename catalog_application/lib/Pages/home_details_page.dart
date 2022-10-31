
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../../model/catalog.dart';
import '../../widgets/home_widgets/add_to_cart.dart';

class Home_details extends StatelessWidget {
  @override
  final Item catalog;

  const Home_details({super.key, required this.catalog}) : assert(catalog != null);
  Widget build(Context) {
    return Scaffold(   
      appBar: AppBar( 
        backgroundColor: Context.canvasColor,
      ), 
      bottomNavigationBar: Container( 
        color: Context.cardColor,
        child: ButtonBar(alignment: MainAxisAlignment.spaceBetween, 
                children: [ 
                  "\$${catalog.price}".text.xl4.red800.bold.make(), 
                  // ElevatedButton(onPressed: (){},  
                  // style: ButtonStyle(
                  //  backgroundColor: MaterialStateProperty.all(
                  // Context.theme.buttonColor,
                  //   ), 
                  //   shape: MaterialStateProperty.all(StadiumBorder()),
                  //   ),
                  //   child: "Add to Cart".text.xl.make(), 
                    
                  //   ).wh(130,50) 
                  AddToCart(catalog: catalog),
                ], 
                ).p32(),
      ),
    
      backgroundColor: Context.accentColor,
      body:SafeArea( 
        bottom: false,
        child: Column( 
          children: [ 
            Hero(  
              
              tag:  Key(catalog.id.toString()),
              child: Image.network(catalog.image) 
              ).h32(Context), 
              Expanded(child: VxArc( 
                height: 30.0, 
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP, 
                

                child: Container(  
                  width: Context.screenWidth,
                  color: Context.cardColor, 
                  child: Column(children: [
                     catalog.name.text.xl4.color(Context.accentColor).bold.make(), 
                   catalog.desc.text.textStyle(Context.captionStyle).xl.make(),10.heightBox, 
                  "The version number is three numbers separated by dots, such as 1.0.0 in the example above, followed by an optional build number such as 1 in the example above, separated by a +." 
                  .text.textStyle(Context.captionStyle).make().p16(),
                  ],
                  ).py64(),
                ),
              ))
          ],
        ),
      ),
    );
  }
}
