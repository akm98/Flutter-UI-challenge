import 'package:flutter/material.dart';
import 'package:flutteruichallenge/themecolors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';


class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int quantity =1;
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery. of(context). size. width;

    return Scaffold(

      body: Container(

        color: primaryBackground,
        child: Column(
          children: [
            SizedBox(height: 50,),
            Stack(

              overflow: Overflow.visible,
              alignment: Alignment.center,
              children: [
                Container(
                  height: 200,
                  width: screenWidth,
                  margin: EdgeInsets.fromLTRB(20,0,20,20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: secondaryBackground,
                  ),
                ),
                 Positioned(
                   top: 0,
                   child: Hero(
                     tag: 'Pro-Vac Venco',
                     child: Image.asset('assets/images/med1.png',height: 240,),
                   ),
                 ),
                Positioned(
                  top: 5,
                  left: 15,
                  right: 30,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: Icon(Icons.arrow_back,color: Colors.grey),
                        onPressed: (){Navigator.of(context).pop();},
                      ),
                      IconButton(
                          icon:isFav?Icon(Icons.favorite,color: Colors.red[400],) :Icon(Icons.favorite_border,color: Colors.white),
                        onPressed: (){
                            setState(() {
                              isFav=!isFav;
                            });
                        },
                      ),
                    ],
                  ),
                ),

              ],
            ),
            Container(
              margin: EdgeInsetsDirectional.only(top:40),
                child: Text('Pro Vac Venco',style: styleHeading1,)
            ),
            Text('by baximco',style: styleCompany,),
            Container(

                margin: EdgeInsets.all(20),
                child: Text('A COVID-19 manufacturing plant of the institute in Kunming, capital city '
                    'Yunnan Province, will be put into use in the second half of 2020',style: styleRegular,textAlign: TextAlign.center,)
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 2,
                  width: screenWidth/4,
                  color: secondaryBackground,
                ),
                Text(r'$34.50',style: stylePrice,),

                Container(
                  height: 2,
                  width: screenWidth/4,
                  color: secondaryBackground,
                ),
              ],
            ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsetsDirectional.only(top: 20),
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,

                ),
                child: Text('50 ml',style: GoogleFonts.poppins(fontSize: 14,color: Colors.black87,fontWeight: FontWeight.w600),),
              ),
              Container(
                margin: EdgeInsetsDirectional.only(start: 20),
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: secondaryBackground,

                ),
                child: Text('100 ml',style: styleQuantity,),
              ),
              Container(
                margin: EdgeInsetsDirectional.only(start: 20),
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: secondaryBackground,

                ),
                child: Text('150 ml',style: styleQuantity,),
              ),

            ],
          ),
          Container(
           margin: EdgeInsets.symmetric(vertical: 30,horizontal: screenWidth/3.5),
            padding: EdgeInsets.symmetric(vertical: 3,horizontal: 5),
          // width: screenWidth/3,
            decoration: BoxDecoration(
              color: secondaryBackground,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Container(
                  padding: EdgeInsets.all(0),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: primaryBackground,

                  ),

                  child: IconButton(
                    onPressed: (){
                      if(quantity>1) {
                        setState(() {
                          quantity--;
                        });
                      }
                    },
                    icon: Icon(Icons.remove,color: Colors.white,),

                  ),
                ),
                Text('$quantity',style: styleHome,),
                Container(
                  padding: EdgeInsets.all(0),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: IconButton(
                    onPressed: (){
                      setState(() {
                        quantity++;
                      });
                    },
                    icon: Icon(Icons.add,color: primaryBackground,),

                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: FlatButton(
              onPressed: (){},
              padding: EdgeInsets.all(10),
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
              color: primaryYellow,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(FontAwesomeIcons.shoppingBag,color: primaryBackground,),
                  Text(' Add to bucket',style: GoogleFonts.poppins(fontSize: 20,fontWeight:FontWeight.w500,color: Colors.black87),)
                ],
              ),
            ),
          ),
          ],
        ),
    ),
    );
  }
}
