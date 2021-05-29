import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import './tampilan_webview.dart';
import 'aboutMe.dart';

class TampilanHome extends StatefulWidget {
  @override
  _TampilanHomeState createState() => _TampilanHomeState();
}

class _TampilanHomeState extends State<TampilanHome> {
  String kode = "";
  var getKode;
  Future scanBarcode() async {
    getKode = await BarcodeScanner.scan();
    setState(() {
      kode = getKode.rawContent;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.home,
          color: Colors.grey,
          size: 35
        ),
        title: Text("Sensor QR Code"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        elevation: 0.0,
        bottom: PreferredSize(
          child: Container(
            color:Colors.grey,
            height: 8.0,
          ),
          preferredSize: Size.fromHeight(0),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Image.asset('images/qrcode.png', width: 200, fit: BoxFit.fitWidth),
          ),
          SizedBox(
            height: 10.0,
          ),
          // ignore: deprecated_member_use
          FlatButton(
            onPressed: () {
              scanBarcode();
            },
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    "Scan QR Code",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
          ),
          // ignore: deprecated_member_use
          FlatButton(
            onPressed: kode == ""
                ? () {}
                : () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TampilanWeb(kode),
                      ),
                    );
                  },
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: kode == ""
                      ? Text(
                          "URL",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                          ),
                        )
                      : Text(
                          kode,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                          ),
                        ),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            padding: EdgeInsets.only(top:5, left: 8, right: 8, bottom: 5),
            child: Text('Petunjuk Penggunaan :',textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 17.0,fontWeight: FontWeight.w500),),
          ),

          Container( 
            child: Text(
              'Tekan tombol Scan QR Code lalu arahkan kamera ke QR code'
              ' yang yang akan di-scan. Baru pada kolom URL akan muncul '
              ' sebuah URL. Jika URL ditekan maka secara langsung akan '
              ' diarahkan ke halaman yang dituju oleh URL tersebut',
              textAlign: TextAlign.justify,
            ),
            padding: EdgeInsets.only(top:5, left: 8, right: 8, bottom: 5),
            margin: EdgeInsets.only(top:3, bottom: 2, left: 5, right: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: Colors.teal,
                width: 2,
              ) 
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: RaisedButton(
          color: Colors.teal,
          child: Text('Developed by Agung Ayu',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyProfil()),
            );
          },
        ),
      ),
    );
  }
}