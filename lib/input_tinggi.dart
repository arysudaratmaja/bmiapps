import 'package:bmiapps/input_berat.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'input_berat.dart';

class InputTinggi extends StatefulWidget {

  final String nama;
  final String kelamin;
  int tanggal;
  int bulan;
  int tahun;

  InputTinggi({this.nama,this.kelamin,this.tanggal,this.bulan,this.tahun});

  @override
  _InputTinggiState createState() => _InputTinggiState();
}

class _InputTinggiState extends State<InputTinggi> {


  int tinggi = 0;

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Color(0xFFa6def7),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 100,left: 10,right: 10),
                child:
                Image.asset('images/tinggi.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:30,left: 40),
                child: Text(
                    'Tinggi kamu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 45),
                child: Text(
                  'berapa?',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.only(top: 130,left: 20,right: 20),
                  padding: EdgeInsets.all(10),
                  // color: Colors.blue[700],
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          onChanged: (txt) {
                            setState(() {
                              tinggi = int.parse(txt);
                            });
                          },
                          keyboardType: TextInputType.phone,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize:14,
                          ),
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(top:20,bottom:20,left: 30),
                              border: OutlineInputBorder(
                                borderRadius: const BorderRadius.all(
                                  const Radius.circular(15.0),
                                ),
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none
                              )
                              ),

                              fillColor: Colors.white,
                              filled: true,
                              hintText: 'Tinggi (cm)'
                          ),
                        ),
                      ),
                    ],
                  )),

              Container(
                margin: EdgeInsets.only(left: 40,right: 40,bottom: 20,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(child:
                    RaisedButton(
                      onPressed: () {
                        Navigator.pop(context);},
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      color: Colors.redAccent,

                      child: Text(
                        'Kembali',
                        style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                      shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    ),
                    ),
                    SizedBox(
                      width: 180,
                    ),
                    Expanded(child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => InputBerat(tinggi:tinggi, nama:widget.nama, kelamin:widget.kelamin,tanggal:widget.tanggal,bulan:widget.bulan,tahun:widget.tahun)),
                        );
                      },
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      color: Colors.lightGreen,
                      // textColor: Colors.white,
                      child: Text(
                        'Selanjutnya',
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