import 'package:flutter/material.dart';
import 'package:maybemyflyme/Getstarted.dart';
import 'package:maybemyflyme/Home.dart';
import 'package:maybemyflyme/login.dart';
import 'package:maybemyflyme/login2.dart';
import 'package:maybemyflyme/page.dart';

import 'Splash screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fly Me',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: Splashscreen()
      //const Splashscreen(),
    );
  }
}
