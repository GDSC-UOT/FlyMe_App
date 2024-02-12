import 'package:flutter/material.dart';
import 'package:maybemyflyme/theme/size.dart';

import 'login.dart';
class Getstarted extends StatefulWidget {
  const Getstarted({Key? key}) : super(key: key);

  @override
  State<Getstarted> createState() => _GetstartedState();
}

class _GetstartedState extends State<Getstarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
         SizedBox(height: getSizeHeight(context, 0.100),),

          Container(
            alignment: Alignment.topLeft,
            child: Image.asset(
              'assets/images/wflymelogo.png',
              width: 100,
              height: 100,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Fly Me',
            style: TextStyle (color:Color(0xFF8BB1EE), fontSize: 29,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
            ),

          SizedBox(height: 40),
          Text(
            ' Every thing is forgettable but bad childhood memories will stay within us to the end',
            style: TextStyle (color: Color(0xFF566589),fontSize: 14,fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
          ),
          SizedBox(height: 300),
      ConstrainedBox(
        constraints: BoxConstraints.tightFor(width: 120.0, height: 50.0),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF879DCF),
              side: BorderSide(width: 1.0, color: Colors.white),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const login()));
            },
            child: Center(
              child: Text("Get Started"),
            ),
        ),

      ),
      ],
    ),
    );
  }
}
