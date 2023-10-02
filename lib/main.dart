import 'package:flutter/material.dart';

import 'Views/Splash Screen/Splash_Screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Editing()
      initialRoute: '/Dialogue_Page',
      routes: {
        // When navigating to the "/" route, build the HomeScreen widget.
        '/Dialogue_Page': (context) => Splash_Screen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
      },);
  }
}
