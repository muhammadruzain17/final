import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:dasar/main.dart';

class AddData extends StatefulWidget {
  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  TextEditingController namaController = new TextEditingController();
  TextEditingController posisiController = new TextEditingController();
  TextEditingController gajiController = new TextEditingController();


void addData() {
  var url = "https://150599.000webhostapp.com/koneksi/tambahPegawai.php";
  http.post(url, body: {
    "nama" : namaController.text,
    "posisi" : posisiController.text,
    "gaji" : gajiController.text
  });
}

  @override 
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("Tambah Data Pegawai"),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(children: <Widget>[
          new Column(
            children: <Widget>[
              new Padding(padding: new EdgeInsets.only(
                top: 15.0
              )),
              new TextField(
                controller: namaController,
                decoration: new InputDecoration(
                  hintText: "Input Nama Pegawai",
                  labelText: "Nama Pegawai",
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0)
                  )
                )
              ),

              new Padding(padding: new EdgeInsets.all(5.0)),
              new TextField(
                controller: posisiController,
                decoration: new InputDecoration(
                  hintText: "Input Posisi Pegawai",
                  labelText: "Posisi Pegawai",
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0)
                  )
                )
              ),

              new Padding(padding: new EdgeInsets.all(5.0)),
              new TextField(
                controller: gajiController,
                decoration: new InputDecoration(
                  hintText: "Input Gaji Pegawai",
                  labelText: "Gaji Pegawai",
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(20.0)
                  )
                )
              ),

              new Padding(padding: new EdgeInsets.all(5.0)),
              new RaisedButton(
                child: new Text("Tambah Data"),
                color: Colors.green,
                onPressed: (){
                  //addData();
                  //untuk upload image
                  addData();
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new Login()
                  ));
                },
              )
              
            ],
          )
        ],),
      ),
      );
  }
}