import 'package:flutter/material.dart';

import 'screens/home.dart';
import 'screens/tips.dart';
import 'screens/success.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'azim.delivery',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      // home: LoginPage(),
      routes: <String, WidgetBuilder>{
        '/':(BuildContext context) => Home(),
        '/tips':(BuildContext context) => Tips(),
        '/success':(BuildContext context) => Success(),
      },
    );
  }
}