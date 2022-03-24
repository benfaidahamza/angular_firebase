import 'package:app1/getusername.dart';
import 'package:app1/main.dart';
import 'package:flutter/material.dart';
import 'package:app1/ajout.dart';


class Acceuil extends StatefulWidget{
  @override
  _State createState() => new _State();
}

class _State extends State<Acceuil> {
  void ajout()
  {
    Navigator.push(context,MaterialPageRoute(builder: (context)=>AddUser()));
  }
   void collection()
   {
     Navigator.push(context,MaterialPageRoute(builder: (context)=>UserInformation()));
   }
   void home()
   {
     Navigator.push(context,MaterialPageRoute(builder: (context)=>MyApp()));
   }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('sphouse'),
        ),
        body: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.all(20.0),
                  child:
                  new Text('bonjour '),

             ),
              Container(
                  padding: EdgeInsets.all(30.0),
                  child: ElevatedButton(onPressed:() {
                    ajout();
                  },
                      child: Text("ajout"))
              ),
              Container(
                  padding: EdgeInsets.all(30.0),
                  child: ElevatedButton(onPressed:() {
                   collection();
                  },
                      child: Text("collection"))
              ),

              Container(
                  padding: EdgeInsets.all(30.0),
                  child: ElevatedButton(onPressed:() {
                    home();
                  },
                      child: Text("sign out"))
              )
            ],
          ),
        )
    );
  }
}