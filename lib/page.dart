import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:maybemyflyme/theme/colors.dart';
import 'package:maybemyflyme/theme/size.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}
class ButtonData {
  final String title;
  final String imagePath;

  ButtonData(this.title, this.imagePath);
}
class _Page1State extends State<Page1> {
  late double screenWidth=MediaQuery.of(context).size.width;


  List<ButtonData> buttonsData = [
    ButtonData("counseling", "assets/icons/Consulting.png"),
    ButtonData("books", "assets/icons/Book.png"),
    ButtonData("donation", "assets/icons/Donation.png"),
    ButtonData("complaint", "assets/icons/complaint.png"),
    ButtonData("movies", "assets/icons/movies.png"),
    ButtonData("courses", "assets/icons/courses.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(children: [
          Padding(padding: EdgeInsets.all(getSizeHeight(context,0.0125)),child: Stack(
            children: [
              Container(
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(getSizeHeight(context,0.0125)),
                  ),

                  color: Color(0xFF8BB1EE),
                ),

              ),
              ClipPath(
                clipper: ProsteBezierCurve(
                  position: ClipPosition.bottom,
                  list: [
                    BezierCurveSection(
                      start: Offset(0, 50),
                      top: Offset((screenWidth/2) ,95),
                      end: Offset(screenWidth, 80),
                    ),
                  ],
                ),
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color:Color(0xFFA2C0F1),
                      borderRadius: BorderRadius.all(Radius.circular(getSizeHeight(context,0.0125)),
                      )
                  ),
                ),
              ),
            ],
          ),),
          Container(
            width: getSizeWidth(context, 0.85),
            transform: Matrix4.translationValues(getSizeWidth(context, 0.0165), -getSizeHeight(context, 0.15), 0)
            ,child:
          Row(children: [
            SizedBox(
                height:getSizeHeight(context, 0.1),
                width:getSizeHeight(context, 0.1),

                child:
                CircleAvatar(backgroundColor: white,child: Padding(
                  padding: EdgeInsets.all(1),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(getSizeHeight(context,0.0125))),
                    child: Image.asset('assets/images/profilephoto.png'),
                  ),
                ),)),
            SizedBox(width: getSizeWidth(context, 0.0125)),
            SizedBox(width: getSizeWidth(context, 0.7),child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hello, Yaman!'  , style: TextStyle (fontSize: 14,fontWeight: FontWeight.bold),),
                  SizedBox(height: 9,)
                  ,Row(
                    children: [
                      Text('let’s get started with your journey today ', style: TextStyle (fontSize: 7),

                      ),
                      SizedBox(width: 4),
                      Image.asset(
                        'assets/icons/Kite.png',
                        width: 22,     height: 22,
                      ),
                    ],
                  ),

                ]
            ),
            ),
          ],)
            ,),
          Container(
            margin: EdgeInsets.all(getSizeHeight(context, 0.00625)),

            height: getSizeHeight(context, 0.6),
            transform: Matrix4.translationValues(0, -getSizeHeight(context, 0.08), 0),
            padding: EdgeInsets.symmetric(horizontal: getSizeWidth(context, 0.08)),child:
          StaggeredGrid.count(
            crossAxisCount: 2,
            crossAxisSpacing: 2,
            mainAxisSpacing: 0,
            children: List.generate(6, (index) {
              final buttonData = buttonsData[index];
              return Container(
                margin: EdgeInsets.all(getSizeHeight(context, 0.0125)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(getSizeHeight(context, 0.0125))),
                  color: Color(0xFFFAFAFA),
                  border: Border.all(
                    color: Color(0xFF0D3353),
                    width: 0.5,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(0.5),
                  child: Column(
                    children: [
                      Image.asset(
                        buttonData.imagePath,
                        width: 50,
                        height: 50,
                      ),

                      SizedBox(height: getSizeHeight(context, 0.02)),
                      Transform.translate(
                        offset: Offset(0, -10),
                        child: Text(
                          buttonData.title,
                          style: TextStyle(color: Color(0xFF566589),fontSize: 13,fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      )



                    ],
                  ),
                ),
              );
            }
            ),
          ),
          ),
          Transform.translate(
              offset: Offset(0, -177),
              child:
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 310,
                  height: 90,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color(0xFF0D3353), width: 0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Schools',
                              style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 10,),
                            Text(
                              'choose the best school for your child',style: TextStyle(fontSize: 10, ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 7),
                      Image.asset(
                        'assets/icons/School.png',
                        width: 60,
                        height: 60,
                      ),
                    ],
                  ),
                ),
              )
          ),
        ]

        ),

    );

  }
}