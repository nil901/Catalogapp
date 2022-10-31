import 'package:flutter/material.dart';
import 'package:flutter_application/Pages/cart_page.dart';
import 'package:flutter_application/widgets/themes.dart';

import 'Pages/Login_page.dart';
import 'Pages/home_Page.dart';
import 'Utils/Routes.dart';


void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Homepage(),
      themeMode: ThemeMode.light,
      theme:Mythemes.lightthemes(context),
      darkTheme: Mythemes.darkthemes(context),
      debugShowCheckedModeBanner: false,
      // initialRoute: "/Login" ,
      routes: {
        "/": (context) => LoginPage(),
        Myroutes.HomeRoute: (context) => Homepage(),
        Myroutes.loginRoutes: (context) => LoginPage(),
        Myroutes.CartRoute: (context) => CartPage(),
      },
    );
  }
}


