
import 'package:flutter/material.dart';
import 'package:maybemyflyme/login2.dart';
import 'package:maybemyflyme/theme/size.dart';
class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: getSizeHeight(context, 0.125),),
            Text(
              'welcome!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold, color: Color(0xFF8BB1EE),

              ),
            ),
            SizedBox(height: 30,),
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                labelStyle: TextStyle(
                  color: Color(0xFFCECECE),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF8BB1EE),

                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF8BB1EE),
                  ),
                ),
              ),
              style: TextStyle(
                color: Color(0xFFCECECE),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: Color(0xFFCECECE),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF8BB1EE),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFF8BB1EE),
                  ),
                ),
              ),
              style: TextStyle(
                color: Color(0xFFCECECE),
              ),
            ),
            Spacer(),
            InkWell(
              onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>const login2()));

              },
    child: Container(
    width: 509.0,
    height: 48.0,
    decoration: BoxDecoration(
    color: Color(0xFF879DCF),
    borderRadius: BorderRadius.circular(100),
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text(
    'Next',
    style: TextStyle(
    color: Colors.white,
    fontSize: 16.0,
    ),
    ),
    SizedBox(width: 5),
    Icon(
    Icons.arrow_forward,
    color: Colors.white,
    size: 16.0,
    ),
            SizedBox(height: getSizeHeight(context, 0.125),),

          ],
        ),
      ),
            ),
      ]
    ),
    ),
    );

  }
}



