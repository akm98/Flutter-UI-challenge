import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutteruichallenge/components/categories.dart';
import 'package:flutteruichallenge/components/product_card.dart';
import 'components/NavbarWidget.dart';
import 'themecolors.dart';




class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  bool isVisible =false;
  String categoryName = 'Vaccine';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:primaryBackground,
        elevation: 0,
        leading:Icon(Icons.menu),
        actions: [

          Padding(
            padding: const EdgeInsets.only(right:20),
            child: Icon(Icons.account_circle,size: 30,),
          ),
        ],
        title: Container(
          //margin: EdgeInsets.all(),
          child: Text('Home',style: styleHome,)),
      ),
      body: Stack(
        children: [

          SingleChildScrollView(

            physics: BouncingScrollPhysics(),
            child: Container(
              color: primaryBackground,
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SingleChildScrollView(

                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          child: Category(name:'Vaccine',selected:categoryName=='Vaccine'?true:false,),
                          onTap: (){
                            setState(() {
                              categoryName='Vaccine';
                            });
                          },
                        ),

                        GestureDetector(
                            onTap: (){
                              setState(() {
                                categoryName='Sanitizer';
                              });
                            },
                            child: Category(name:'Sanitizer',selected:categoryName=='Sanitizer'?true:false,)
                        ),

                        GestureDetector(
                            onTap: (){
                              setState(() {
                                categoryName='Mask';
                              });
                            },
                            child: Category(name:'Mask',selected:categoryName=='Mask'?true:false)
                        ),

                        GestureDetector(
                            onTap: (){
                              setState(() {
                                categoryName='Gloves';
                              });
                            },
                            child: Category(name:'Gloves',selected:categoryName=='Gloves'?true:false)
                        ),

                        GestureDetector(
                            onTap: (){
                              setState(() {
                                categoryName='Hand Wash';
                              });
                            },
                            child: Category(name:'Hand Wash',selected:categoryName=='Hand Wash'?true:false)
                        ),

                        GestureDetector(
                            onTap: (){
                              setState(() {
                                categoryName='Immunity Boosters';
                              });
                            },
                            child: Category(name:'Immunity Boosters',selected:categoryName=='Immunity Boosters'?true:false)
                        ),


                      ],
                    ),
                  ),
                  //----------------first half----------------------------
                  SingleChildScrollView   (
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        ProductCard(name: 'Pro-Vac Venco', company: 'by baximco',
                            price: 34.51, color: primaryBackground, imagePath: 'assets/images/med1.png'),
                        ProductCard(name: 'Disease Vaccine', company: 'by baximco',
                            price: 34.50, color: primaryBackground, imagePath: 'assets/images/med2.png'),

                      ],
                    ),
                  ),
                  //---------------second half-----------------------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10,0,0,20),
                        child: Text('Sanitization',style: styleProductName,),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                            onTap: (){
                              setState(() {
                                isVisible=!isVisible;
                                print('----------------------');
                              });
                            },
                            child: Text('All',style: styleFaded,)
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                height: 160,
                                width: 160,
                                margin: EdgeInsets.only(bottom: 10),
                                padding: EdgeInsetsDirectional.only(top:10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: secondaryBackground,
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Text('Mask',style: styleProductName2,),
                                    ),

                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5,40,0,0),
                                child: Image.asset('assets/images/mask.png',height: 150,),
                              ),
                            ],
                          ),
                          Stack(
                            children: <Widget>[
                              Container(
                                height: 160,
                                width: 160,
                                margin: EdgeInsets.only(bottom: 10),
                                padding: EdgeInsetsDirectional.only(top:10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: secondaryBackground,
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Text('Gloves',style: styleProductName2,),
                                    ),

                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5,40,0,0),
                                child: Image.asset('assets/images/gloves.png',height: 150,),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Visibility(
                        visible: isVisible,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                Container(
                                  height: 160,
                                  width: 160,
                                  margin: EdgeInsets.only(bottom: 10),
                                  padding: EdgeInsetsDirectional.only(top:10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: secondaryBackground,
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Text('Mask',style: styleProductName2,),
                                      ),

                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(5,40,0,0),
                                  child: Image.asset('assets/images/mask.png',height: 150,),
                                ),
                              ],
                            ),
                            Stack(
                              children: <Widget>[
                                Container(
                                  height: 160,
                                  width: 160,
                                  margin: EdgeInsets.only(bottom: 10),
                                  padding: EdgeInsetsDirectional.only(top:10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: secondaryBackground,
                                  ),
                                  child: Column(
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: Text('Gloves',style: styleProductName2,),
                                      ),

                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(5,40,0,0),
                                  child: Image.asset('assets/images/gloves.png',height: 150,),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          NavBar(),
        ],
      ),
    );



  }
}
