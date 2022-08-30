import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData get themeDta => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black),
        ),
      );

  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);

  static lightTheme(BuildContext context) {}
}






// class MyTheme {
//   static ThemeData lightTheme(BuildContext) => ThemeData(
//       primarySwatch: Colors.deepPurple,
//       fontFamily: GoogleFonts.lato().fontFamily,
//       appBarTheme: AppBarTheme(
//         color: Colors.white,
//         elevation: 0.0,
//         iconTheme: IconThemeData(color: Colors.black),
//         // textTheme: theme.of(context).textTheme,
//       ));
// }

//   static ThemeData darkTheme(BuildContext context) =>
//       ThemeData(brightness: Brightness.dark);

//   static lightTheme(BuildContext context) {}
// }
