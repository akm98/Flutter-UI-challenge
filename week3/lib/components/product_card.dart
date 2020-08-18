import 'package:flutter/material.dart';
import 'package:flutteruichallenge/productPage.dart';
import 'package:flutteruichallenge/themecolors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class ProductCard extends StatelessWidget {
  ProductCard({
    @required this.name,
    @required this.company,
    @required this.price,
    @required this.color,
    @required this.imagePath,


});
  String name,company;
  double price;
  Color color;
  String imagePath;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductPage()),
        );
      },
      child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(10,40,10,30),
                height: 260,width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: secondaryBackground,
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:35.0,left: 0),
              child: Column(
               // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(name,style: styleProductName,),
                  Text(company,style:styleCompany ,),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.only(top: 0),
                          child: Text(r'$ '+price.toString(),style:stylePrice,)),
                      Container(
                         margin: EdgeInsetsDirectional.only(start: 60,bottom: 10),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: primaryYellow,
                          ),
                          child: FaIcon(FontAwesomeIcons.shoppingBag,color: Colors.black87,size: 20,)),

                    ],
                  ),

                ],
              ),
            ),
            Positioned(
              top:0,
              right: 0,
              left: 10,
              child: Hero(
                tag: name,
                child: Image.asset(imagePath,height: 200,width: 200,),
              ),
            ),
          ],

      ),
    );
  }
}

