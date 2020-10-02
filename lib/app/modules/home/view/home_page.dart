import 'package:flutter/material.dart';
import 'package:pizza_delivery_app/app/modules/splash/view/splash_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatelessWidget {
  static const router = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Container(
        child: FlatButton(
          onPressed: () {
            SharedPreferences.getInstance().then((sp) => sp.clear());
            Navigator.of(context)
                .pushNamedAndRemoveUntil(SplashPage.router, (route) => false);
          },
          child: Text('Sair'),
        ),
      ),
    );
  }
}
