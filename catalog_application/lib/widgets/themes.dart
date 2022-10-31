import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class Mythemes {
  static ThemeData orangeThems(BuildContext context) => ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Color.fromARGB(255, 255, 164, 164)),
          textTheme: Theme.of(context).textTheme,
        ),
        brightness: Brightness.light,
        primarySwatch: Colors.red,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
      );

  static ThemeData  lightthemes (BuildContext context) => ThemeData(
        cardColor: Colors.white,
       
       canvasColor: creamColor, 
      buttonColor: darkBluishColor, 
      accentColor: Colors.black,
         appBarTheme: AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: Theme.of(context).textTheme,
        ),
        brightness: Brightness.light,
        primarySwatch: Colors.red,
        fontFamily: GoogleFonts.poppins().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
      );

  static ThemeData darkthemes(BuildContext context) => ThemeData( 
    brightness: Brightness.dark,
    cardColor: Colors.black, 
    canvasColor: DarkCreamColor, 
    buttonColor: lightBlulshColor, 
    accentColor: Colors.black,
    appBarTheme: AppBarTheme( 
          
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white), 
        
          textTheme: Theme.of(context).textTheme.copyWith( 
            headline6:  
            context.textTheme.headline6!.copyWith(color: Colors.white)),
        ),
       
        fontFamily: GoogleFonts.poppins().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
      );

  //colors
  static Color creamColor = Color(0xfff5f5f5);
  static Color DarkCreamColor = Vx.gray800;
  static Color darkBluishColor = Color(0xff403b58);
  static Color lightBlulshColor = Vx.purple400;
}
