import 'package:flutter/material.dart';

import 'splash_page.dart';
import 'home.dart';
import 'signup.dart';
import 'login.dart';
import 'category.dart';
import 'session.dart';
import './items/item_list.dart';
import './items/item_detail.dart';

import './profile/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new SplashScreen(),
      theme: new ThemeData(primarySwatch: Colors.pink),
      routes: <String, WidgetBuilder>{
        //EditProfile.routeName: (BuildContext context) => new EditProfile(),
        "/Home": (BuildContext context) => new Home(),
        "/login": (BuildContext context) => new LoginPage(),
        "/signup": (BuildContext context) => new SignupPage(),
        "/session": (BuildContext context) => new SessionPage(),
        //"/item_list": (BuildContext context) => new ItemList(),
        //"/item_detail": (BuildContext context) => new ItemDetail(),
        "/category": (BuildContext context) => new Category(),
      },
      onUnknownRoute: (RouteSettings setting) {
        // when user try to navigate to unexist route
        return MaterialPageRoute(
          builder: (BuildContext context) => Home(),
        );
      },
    );
  }
}
