import 'package:flutter/material.dart';
import 'BMICalculatorScreen.dart';
import 'package:shimmer/shimmer.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'package:flutter_svg/svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: grid_list(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class grid_list extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: GridView.count(crossAxisCount: 2,
              children: <Widget>[
                Card(
                  color: new Color(0xFFFCFFF0),
                   child:Shimmer.fromColors(
                    baseColor: Colors.red,
                    highlightColor: Colors.pink,


                    child: Stack(alignment: Alignment.center,
                    children: <Widget>[
                      SvgPicture.asset("assets/images/what.svg", fit: BoxFit.contain,
                        height:170,width:140, ),
                      Container(
                        margin: EdgeInsets.only(top: 240,left:10),
                        child: Text('what is anemia',style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold)),

                      )
                    ],
                  ),
        ),
                ),


        Card(
                  color: new Color(0xFFDAA520),

                  child: Stack(alignment: Alignment.center,
                    children: <Widget>[
                      Image(fit: BoxFit.fill,
                        height:240,width:210,
                        image: AssetImage(
                          'assets/images/shield.png',
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 240,left:10),
                        child: Text('Prevention',style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                ),

                Card(

                  color: new Color(0xFF0033FF),
                  child:Shimmer.fromColors(
                    baseColor: Colors.red,
                    highlightColor: Colors.yellow,
                  child: Stack(alignment: Alignment.center,
                    children: <Widget>[

                      SvgPicture.asset("assets/images/star.svg", fit: BoxFit.contain,
                        height:170,width:140, ),
                      Container(
                        margin: EdgeInsets.only(top: 240,left:10),
                        child: Text('Types',style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold)),

                      )
                    ],
                  ),
                ),),
                Card(

                  color: new Color(0xFFA0522D),
                  child:Shimmer.fromColors(
                    baseColor: Colors.red,
                    highlightColor: Colors.white,
                  child: Stack(alignment: Alignment.center,

                    children: <Widget>[


                      SvgPicture.asset("assets/images/7.svg", fit: BoxFit.contain,
                        height:170,width:140, ),

                      Container(
                        margin: EdgeInsets.only(top: 240,left:10),
                        child: Text('7 Day Diet Plan',style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                ),),
                Card(
                  color: Colors.blue,child:Shimmer.fromColors(
                  baseColor: Colors.brown,
                  highlightColor: Colors.yellow,

                  child: Stack(alignment: Alignment.center,
                    children: <Widget>[
                      SvgPicture.asset("assets/images/nurse.svg", fit: BoxFit.contain,
                        height:170,width:140, ),
                      Container(
                        margin: EdgeInsets.only(top: 240,left:10),
                        child: Text('Self Test Survey',style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                ),),
                  GestureDetector(
                  child:Card(
                  color: Colors.indigo,
                    child:Shimmer.fromColors(
                    baseColor: Colors.red,
                    highlightColor: Colors.white,


                  child: Stack(alignment: Alignment.center,
                    children: <Widget>[


                    SvgPicture.asset("assets/images/heartbmi.svg", fit: BoxFit.contain,
                      height:170,width:140, ),

                    Container(
                        margin: EdgeInsets.only(top: 240,left:10),
                        child: Text('Check My BMI',style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                ),),onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BMICalculatorScreen()));
                  },),
                Card(
                  color: Colors.purple,
                  child: Stack( alignment: Alignment.center,
                    children: <Widget>[
                      SvgPicture.asset("assets/images/phone.svg", fit: BoxFit.contain,
                        height:170,width:140, ),
                      Container(
                        margin: EdgeInsets.only(top: 240,left:10),
                        child: Text('contact us ',style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                ),
                Card(
                  color: Colors.orange,child:Shimmer.fromColors(
                  baseColor: Colors.red,
                  highlightColor: Colors.yellow,
                  child: Stack(alignment: Alignment.center,
                    children: <Widget>[


                      SvgPicture.asset("assets/images/logo.svg", fit: BoxFit.contain,
                        height:170,width:140, ),

                      Container(
                        margin: EdgeInsets.only(top: 240,left:10),
                        child: Text('About Us',style: TextStyle(color: Colors.white,fontSize: 18.0,fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                ),),
              ],
            )
        )
    );
  }
}


