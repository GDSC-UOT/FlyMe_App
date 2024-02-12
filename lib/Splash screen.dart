import 'dart:async';
import 'package:flutter/material.dart';
import 'package:maybemyflyme/theme/colors.dart';
import 'Getstarted.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  late Timer _timer;
  @override
  void initState() {
    // TODO: implement initState
    _timer=Timer.periodic(Duration(seconds: 3), (timer) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Getstarted()));
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _timer.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Text(
              'Fly Me',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
            ),

          SizedBox(height: 4),

          Center(
            child: Transform.translate(
              offset: Offset(20.0, 0.0),
              child: Image.asset(
                'assets/images/flymelogo.png',
                width: 80,
                height: 80,
              ),
            ),
          )

        ],
      ),
    );
  }
}