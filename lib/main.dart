import 'package:flutter/material.dart';
import 'package:pizza_delivery_app/app/modules/auth/view/login_page.dart';
import 'package:pizza_delivery_app/app/modules/home/view/home_page.dart';
import 'package:pizza_delivery_app/app/modules/home/view/register_page.dart';
import 'package:pizza_delivery_app/app/modules/splash/view/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF9d0000),
        primarySwatch: Colors.red,
      ),
      initialRoute: SplashPage.router,
      routes: {
        SplashPage.router: (_) => SplashPage(),
        HomePage.router: (_) => HomePage(),
        LoginPage.router: (_) => LoginPage(),
        // RegisterPage.router: (_) => RegisterPage(),
      },
    );
  }
}
