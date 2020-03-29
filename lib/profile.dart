import 'package:bmiapps/landingpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'landingpage.dart';

class Profile extends StatefulWidget {

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Color(0xFF202020),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top:60),
                child: Text(
                  'Tentang saya',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,left: 10,right: 10),
                child:
                Image.asset('images/profile.png',
                  width: 450,
                  height: 450,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:10,left: 40),
                child: Text(
                  'I Komang',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:0,left: 40),
                child: Text(
                  'Ary Sudaratmaja',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:20,left: 40,right: 40),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vitae proin sagittis nisl rhoncus mattis rhoncus urna neque. Nec dui nunc mattis enim ut tellus. Nec nam aliquam sem et tortor. Mi eget mauris pharetra et. Rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt. Viverra justo nec ultrices dui sapien eget mi. Mi sit amet mauris commodo quis. Vitae tortor condimentum lacinia quis vel eros donec. Tellus rutrum tellus pellentesque eu tincidunt tortor aliquam nulla. Sodales ut eu sem integer vitae justo eget magna fermentum. Urna et pharetra pharetra massa massa ultricies mi quis hendrerit. Pulvinar etiam non quam lacus suspendisse faucibus. Dui id ornare arcu odio ut sem nulla pharetra. Metus dictum at tempor commodo ullamcorper. Aliquam id diam maecenas ultricies mi eget mauris pharetra. Et tortor at risus viverra adipiscing at in. Elementum nisi quis eleifend quam adipiscing. Vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 80,right: 80,bottom: 0,top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(child:
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Landing()),
                        );
                      },
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      color: Colors.white,

                      child: Text(
                        'Tutup',
                        style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    ),
                    ),
                  ],
                ),
              ),
          ],
          ),
        ),
      );
  }
}