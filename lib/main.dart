import 'package:flutter/material.dart';
import 'package:app1/signup.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:app1/signin.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyDeQjSCWpWMATMmilNq2wuTBfDVWU_E4XE",
        authDomain: "fir-421b8.firebaseapp.com",
        projectId: "fir-421b8",
        storageBucket: "fir-421b8.appspot.com",
        messagingSenderId: "262627006823",
        appId: "1:262627006823:web:f2d1db0aaffab3db0a37c2",
      )
  );
  runApp(MaterialApp(
    home: MyApp(),
  ));

}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();

}


class _State extends State<MyApp>
{

  void signin()
  {
    Navigator.push(context,MaterialPageRoute(builder: (context)=>SignIn()));

  }
  void signup()
  {
    Navigator.push(context,MaterialPageRoute(builder: (context)=>SignUp()));

  }@override
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
                  padding: EdgeInsets.all(30.0),
                  child: ElevatedButton(onPressed:() {
                  signup();
                  },
                      child: Text("sign up"))
              ),

              Container(
                  padding: EdgeInsets.all(30.0),
                  child: ElevatedButton(onPressed:() {
                  signin();
                  },
                      child: Text("sign in"))
              )
            ],
          ),
        )
    );
  }
}
