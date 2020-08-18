import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutteruichallenge/themecolors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavBar extends StatefulWidget {
  @override

  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery. of(context). size. width;
    return Positioned(
      bottom: 20,
      left: 0,
      right: 0,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: screenWidth/10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(

            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              //margin: EdgeInsets.symmetric(horizontal: screenWidth/10),
              width: screenWidth,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white.withOpacity(0.3),
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                   // padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: primaryYellow,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.home,color: Colors.black87,),
                    ),
                  ),
                  Container(
                    //padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: primaryBackground
                    ),
                    child: IconButton(
                      icon: Icon(Icons.favorite_border,color: Colors.white,),
                    ),
                  ),
                  Container(
                    //padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: primaryBackground
                    ),
                    child: IconButton(
                      icon: Icon(Icons.search,color: Colors.white,),
                    ),
                  ),
                  Container(
                    //padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: primaryBackground
                    ),
                    child: IconButton(
                      icon: FaIcon(FontAwesomeIcons.shoppingBag,color: Colors.white,),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
