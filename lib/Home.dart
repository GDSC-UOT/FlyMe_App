import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:maybemyflyme/page.dart';
import 'package:maybemyflyme/theme/colors.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

final pages=[
  const Page1(),
  const Page1(),
  const Page1(),
  const Page1(),
];
late int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: PreferredSize(preferredSize: const Size.fromHeight(0),child: AppBar(elevation: 0,
      backgroundColor: white,
      ),),
      body: pages[index],
      bottomNavigationBar: CurvedNavigationBar(
        index: index,
        height: 75,
        items:
        <Widget>[
          Image.asset('assets/icons/profileicon.png',width: 34,height: 34,),
          Image.asset('assets/icons/Homeicon.png',width: 34,height: 34,),
          Image.asset('assets/icons/complainticon.png',width: 34,height: 34,),
          Image.asset('assets/icons/chaticon.png',width: 34,height: 34,),
        ],
        color: primaryColor,
        buttonBackgroundColor: primaryColor,
        backgroundColor: emptyColor,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 500),
        onTap: (i) async {
          setState(() {
            index=i;
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }

}
