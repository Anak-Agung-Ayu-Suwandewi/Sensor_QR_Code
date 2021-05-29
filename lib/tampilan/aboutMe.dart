import 'package:flutter/material.dart';

class MyProfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  
    Scaffold(
      backgroundColor: Colors.purple[300],
      appBar: AppBar(
        title: Text("Profil"),
        centerTitle: true,
        bottom: PreferredSize(
          child: Container(
            color:Colors.purple,
            height: 4.0,
          ),
          preferredSize: Size.fromHeight(0),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Konten()
    );
  }
}

class Konten extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
        children: <Widget>[
          Container(
            width: 160,
            height: 320,
            margin: EdgeInsets.only(top:10, bottom:5),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              image: DecorationImage(fit: BoxFit.fill, image: AssetImage('images/Person.jpg'),),
            ),
          ),
          Text('Anak Agung Ayu Suwandewi', style: TextStyle(color: Colors.black, fontSize: 24.0),),
           Text('NIM.1915051003', style: TextStyle(color: Colors.black, fontSize: 24.0),),
           Text('PTI 4A', style: TextStyle(color: Colors.black, fontSize: 24.0),),
          Text('gungayuswandewi@gmail.com', style: TextStyle(color: Colors.blue, fontSize: 12.0),),

          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top:20, left:40),
                padding: EdgeInsets.only(left:10, right:25, top:5, bottom:10),
                decoration: BoxDecoration(
                  color: Colors.cyan[100],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  )
                ),
                child: Column(
                  children: <Widget>[
                    Icon(Icons.room, color: Colors.green,),
                    Container(
                      child: Text('Gianyar', style: TextStyle(color: Colors.white, fontSize: 16.0),),
                      margin: EdgeInsets.only(top:4),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )
                  ],
                )
              ),

              Container(
                margin: EdgeInsets.only(top:15, left:40),
                padding: EdgeInsets.only(left:14, right:20, top:7, bottom:7),
                decoration: BoxDecoration(
                  color: Colors.cyan[100],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  )
                ),
                child: Column(
                  children: <Widget>[
                    Icon(Icons.school, color: Colors.purple,),
                    Container(
                      child: Text('Undiksha', style: TextStyle(color: Colors.white, fontSize: 16.0),),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    )
                  ],
                )
              ),
            ]
          ),

          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top:15, left:40),
                padding: EdgeInsets.only(left:11, right:11, top:5, bottom:5),
                decoration: BoxDecoration(
                  color: Colors.cyan[100],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  )
                ),
                child: Column(
                  children: <Widget>[
                    Icon(Icons.favorite, color: Colors.orange,),
                    Container(
                      child: Text('Travelling', style: TextStyle(color: Colors.white, fontSize: 16.0),),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )
                  ],
                )
              ),
              
              Container(
                margin: EdgeInsets.only(top:15, left:40),
                padding: EdgeInsets.only(left:23, right:23, top:5, bottom:5),
                decoration: BoxDecoration(
                  color: Colors.cyan[100],
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.blue,
                    width: 2,
                  )
                ),
                child: Column(
                  children: <Widget>[
                    Icon(Icons.weekend, size: 50, color: Colors.brown),
                    Container(
                      child: Text('Sleep', style: TextStyle(color: Colors.white, fontSize: 16.0),),
                      padding: EdgeInsets.all(10),
                       decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      
                    )
                  ],
                )
              ),
            ]
          ),
        ],  
      ) 
    );
  }
}


 
