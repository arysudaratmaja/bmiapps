import 'package:bmiapps/input_data.dart';
import 'package:bmiapps/profile.dart';
import 'package:flutter/material.dart';
import 'dart:math';


class BMIResult extends StatelessWidget {

  BMIResult({
    @required this.tinggi_badan,
    @required this.berat_badan,
    @required this.nama_user,
    @required this.jenis_kelamin,
    @required this.tanggal_lahir,
    @required this.bulan_lahir,
    @required this.tahun_lahir,
   });

  final int tinggi_badan;
  final int berat_badan;
  final String nama_user;
  final String jenis_kelamin;
  final int tanggal_lahir;
  final int bulan_lahir;
  final int tahun_lahir;

  @override
  Widget build(BuildContext context) {

    double bmi = berat_badan/pow(tinggi_badan/100,2);
    String cBMI;
    if (bmi>=28) cBMI="Kamu obesitas, nih.";
    else if (bmi>=23) cBMI="Berat badanmu berlebihan.";
    else if (bmi>=17.5) cBMI="Berat badanmu normal, kok.";
    else cBMI="Berat badanmu kurang, nih.";

    DateTime currentDate = DateTime.now();
    int umur;
    umur =  currentDate.year-tahun_lahir;
    int bulan1 = currentDate.month;
    int bulan2 = bulan_lahir;
    if (bulan2>bulan1){
      umur--;
    }else if(bulan1==bulan2){
      int hari1 = currentDate.day;
      int hari2 = tanggal_lahir;
      if(hari2>hari1){
        umur--;
      }
    }
    String umur_user= '$umur';

    return Scaffold(
      backgroundColor: Color(0xFFfdcf76),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 100),
              child:
              Image.asset('images/hasil.png',
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:0,left: 40),
              child: Text(
                'Hi, $nama_user!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:10,left: 40),
              child: Text(
                'umurmu $umur_user tahun, kan?',
                style: TextStyle(
                  color: Colors.white,
                  height: 0,
                  fontSize: 18,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top:20,left: 40),
              child: Text(
                'Indeks massa tubuhmu:',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:10,left: 40),
              child: Text(
                bmi.toStringAsFixed(2),
                style: TextStyle(
                  height: 1,
                  color: Colors.white,
                  fontSize: 120,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:5,left: 40),
              child: Text(
                cBMI,
                style: TextStyle(
                  color: Colors.white,
                  height: 0,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:20,left: 40),
              child: Text(
                'Kamu $jenis_kelamin, btw!',
                style: TextStyle(
                  color: Colors.white,
                  height: 0,
                  fontSize: 16,
                  //fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                    margin: EdgeInsets.only(left: 80,right: 80,bottom: 0,top: 60),
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
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          color: Colors.white,

                          child: Text(
                            'Coba lagi',
                            style:
                            TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                          shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                        ),
                        ),
                      ],
                    ),
            ),
            Container(
              margin: EdgeInsets.only(left: 216,right: 200,bottom: 20,top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(child:
                  new GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile()),
                      );
                    },
                    child: new Text("Tentang",
                    style: TextStyle(
                      fontSize: 10
                    ),
                    ),
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