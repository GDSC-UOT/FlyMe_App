import 'package:flutter/material.dart';
import 'package:maybemyflyme/Home.dart';
import 'package:maybemyflyme/theme/size.dart';

class login2 extends StatefulWidget {
  const login2({Key? key}) : super(key: key);

  @override
  State<login2> createState() => _login2State();
}

class _login2State extends State<login2> {
  late int first = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        backgroundColor: Colors.white,
        body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: getSizeHeight(context, 0.125),),
          Text(
    'welcome!',
    style: TextStyle (color:Color(0xFF8BB1EE), fontSize: 28,fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
    ),

    SizedBox(height: 30),
    Text(
    ' have you ever experienced domestic violence in your life?',
    style: TextStyle (color: Color(0xFF566589),fontSize: 14,fontWeight: FontWeight.bold),
    textAlign: TextAlign.left,
    ),
SizedBox(height: 30,),
          Container(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Radio(
                  value: 0,
                  groupValue: first,
                  onChanged: (v) {
                    if (v != null) {
                      setState(() {
                        first = v;
                      });
                    }
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  visualDensity: VisualDensity.compact,
                  activeColor: Color(0xFF8BB1EE),
                ),
                const Text(
                  "Yes",
                  style: TextStyle(fontSize: 16,color: Color(0xFF566589)),
                ),
                const SizedBox(width: 40),
                Radio(
                  value: 1,
                  groupValue: first,
                  onChanged: (v) {
                    if (v != null) {
                      setState(() {
                        first = v;
                      });
                    }
                  },
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  visualDensity: VisualDensity.compact,
                  activeColor:Color(0xFF8BB1EE),
                ),

                const Text(
                  "No",
                  style: TextStyle(fontSize: 16,color: Color(0xFF566589)),
                ),
              ],
            ),
          ),
                    SizedBox(height: 380,),
    InkWell(
    onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()));
    },
    child: Container(
    width: 109.0,
    height: 48.0,
    decoration: BoxDecoration(
    color: Color(0xFF879DCF),
    borderRadius: BorderRadius.circular(100),
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        'let’s begin !',
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
        ),
      ),
      SizedBox(width: 5),
    Icon(
    Icons.star,
    color: Colors.white,
    size: 16.0,
    ),


    ],
    ),
    ),
    ),
    ]
    ),
    );
    }
}


