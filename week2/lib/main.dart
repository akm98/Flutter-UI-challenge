import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.pink,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Meetup'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

////////////////colors////////////
  static const Color pink1 = Color(0xFFFFD9E5);
  static const Color pink2 = Color(0xFFFFB0CD);
  static const Color pink3 = Color(0xFFFF80AB);
  static const Color pink4 = Color(0xFFFF6DAB);
  static const Color pinkText = Color(0xFFEB1F63);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        leading: Icon(Icons.arrow_back,color: pinkText,),
        title: Text(widget.title,style: TextStyle(color: pinkText),),
        backgroundColor: Colors.white,
        actions: <Widget>[
          Icon(Icons.search,color: pinkText,)],
      ),
      body:ListView(
          children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 700,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70.0)),
                    color: pink3
                ),
                child: Column(

                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top:500),
                      child: Text('Today 9:00 pm',style:TextStyle(color: pinkText, fontSize: 18,)),
                    ),
                    Container(
                      child: Text('Easy and Gentle Yoga',style:TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold)),
                    ),
                    Container(

                      child: RaisedButton(
                        child: Text('I am going !',style:TextStyle(color: Colors.white),),
                        color: pink2,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))  ,
                        onPressed: (){},
                      ),
                    ),


                  ],
                ),
              ),
              Container(
                height: 450,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70.0)),
                  color: pink2
                ),
                child: Column(

                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top:300),
                      child: Text('Today 8:00 pm',style:TextStyle(color: pinkText, fontSize: 18,)),
                    ),
                    Container(
                      child: Text('Practice French, English and Chinese',style:TextStyle(color: Colors.white, fontSize: 18,fontWeight: FontWeight.bold)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top:15,right: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 2,color: pinkText,)
                          ),
                          child: Icon(Icons.check,size: 30,color: pinkText,),
                        ),
                        Container(
                          margin: EdgeInsets.only(top:15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              border: Border.all(width: 2,color: pinkText)

                          ),
                          child: Icon(Icons.clear,size: 30,color: pinkText,),
                        )
                      ],
                    ),


                  ],
                ),
              ),
              Container(
                height: 250,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70.0)),
                  color: pink1,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(top:90),
                        alignment:Alignment.center ,
                        child: Text('Today 6:00pm',style:TextStyle(color: pinkText, fontSize: 18,))
                    ),
                    Container(
                        padding: EdgeInsets.only(top:5),
                        //alignment:Alignment.center ,
                        child: Text('Yoga and meditaion for beginers',style:TextStyle(
                            color: pinkText,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                        ),
                        )
                    ),
                    Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[

                        Padding(
                          padding: const EdgeInsets.only(top:10.0),
                          child: Stack(

                            overflow: Overflow.visible,
                            children: <Widget>[
                              Positioned(right:-10,child: Image.asset('assets/images/p1.png')),
                              Positioned(right:10,child: Image.asset('assets/images/p2.png')),
                              Positioned(right:30,child: Image.asset('assets/images/p3.png')),
                              Positioned(right:50,child: Image.asset('assets/images/p4.png')),
                            Text(''),
                            ],
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.only(top:20),
                            margin: EdgeInsets.only(left: 15),
                            child: Text('Akash and 4 others',style:TextStyle(color: pinkText, fontSize: 16,))
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  height: 100,
                  padding: const EdgeInsets.all(15.0),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70.0)),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border:Border.all(width: 1,color: pinkText)
                          ),
                          child: Icon(Icons.music_note,color: pinkText,)
                      ),

                      Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(30),
                              border:Border.all(width: 1,color: pinkText)
                          ),
                          child: Icon(Icons.show_chart,color: pinkText)
                      ),
                      Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(30),
                              border:Border.all(width: 1,color: pinkText)
                          ),
                          child: Icon(Icons.favorite_border,color: pinkText)
                      ),

                    ],
                  )

              ),

            ],
          )
          ],
        )
      );


  }
}
