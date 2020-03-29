import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'bmi_result.dart';

class InputBerat extends StatefulWidget {

  int tinggi;
  String nama;
  String kelamin;
  int tanggal;
  int bulan;
  int tahun;

  InputBerat({this.tinggi,this.nama,this.kelamin,this.tanggal,this.bulan,this.tahun});

  @override
  _InputBeratState createState() => _InputBeratState();
}

class _InputBeratState extends State<InputBerat> {

  int berat = 0;

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Color(0xFFefa398),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 100),
                child:
                Image.asset('images/berat.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:20,left: 40),
                child: Text(
                  'Berat kamu',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 43),
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
                              berat = int.parse(txt);
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
                              hintText: 'Berat (Kg)'
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
                      Expanded(child:
                      RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => BMIResult(tinggi_badan: widget.tinggi ,berat_badan: berat,nama_user:widget.nama, jenis_kelamin:widget.kelamin,tanggal_lahir:widget.tanggal,bulan_lahir:widget.bulan,tahun_lahir:widget.tahun)),
                          );
                        },
                        padding: EdgeInsets.only(top: 5, bottom: 5),
                        color: Colors.lightGreen,

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