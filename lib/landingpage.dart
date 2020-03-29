import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'input_data.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Color(0xFFffd686),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 110,left: 5,right: 10),
                child:
                Image.asset('images/landing.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:50),
                child: Text(
                  'IDEAL',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    height: 0,
                    color: Colors.white,
                    fontSize: 100,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:10),
                child: Text(
                  'KALKULATOR BADAN IDEAL ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    letterSpacing: 0.2,
                    height: 1,
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 50,right: 50,bottom: 20,top: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(child:
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => InputData()),
                        );
                      },
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      color: Colors.green,

                      child: Text(
                        'Mulai',
                        style:
                        TextStyle(color:Colors.white,fontSize: 14, fontWeight: FontWeight.w400),
                      ),
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Developed by Resika Arthana & redesign by Ary Sudaratmaja',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),

            ],
          ),
        ),
      );
  }
}