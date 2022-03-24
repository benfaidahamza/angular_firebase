import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:app1/home.dart';


class AddUser extends StatefulWidget {
  @override
  _State createState() => new _State();

}
class _State extends State<AddUser> {

  CollectionReference users = FirebaseFirestore.instance.collection('Users');
  TextEditingController full_name = new TextEditingController();
  TextEditingController numero = new TextEditingController();

  Future<void> addUser() async {
    // Call the user's CollectionReference to add a new user

      users.add({
      'full_name': full_name.text,
      'num': numero.text
    })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
      Navigator.push(context,MaterialPageRoute(builder: (context)=>Acceuil()));
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
                  new TextField(
                    decoration: new InputDecoration(
                        labelText: 'Username',
                        hintText: 'veuillez saisir votre nom et prenom',
                        icon: new Icon(Icons.person)
                    ),
                    controller: full_name,
                  )
              ),
              Container(
                  padding: EdgeInsets.all(20.0),
                  child:
                  new TextField(
                    decoration: new InputDecoration(
                        labelText: 'num',
                        hintText: 'veuillez saisir votre num',
                        icon: new Icon(Icons.phone)
                    ),
                    controller: numero,
                  )
              ),
              Container(
                  padding: EdgeInsets.all(30.0),
                  child: ElevatedButton(onPressed:() {
                    print ("s");
                    addUser();
                    print ("s");
                  },
                      child: Text("ajouter"))
              )
            ],
          ),
        )
    );
  }
}