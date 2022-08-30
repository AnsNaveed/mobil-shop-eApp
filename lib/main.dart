import 'package:flutter/material.dart';
import 'package:mobile_app/pages/home_page.dart';
import 'package:mobile_app/pages/login_page.dart';
import 'package:mobile_app/utilis/routes.dart';
import 'package:mobile_app/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRote,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRote: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
