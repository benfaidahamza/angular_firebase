import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:app1/main.dart';
import 'package:app1/home.dart';


class SignUp extends StatelessWidget {


  TextEditingController _username = new TextEditingController();
  TextEditingController _password = new TextEditingController();

  Future<void> Signup() async
  {


    try {

      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: _username.text, password: _password.text);
      print('succes');
      return main();
    }
    catch (e) {
      print(e);
    }
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
                        hintText: 'veuillez saisir votre mail',
                        icon: new Icon(Icons.person)
                    ),
                    controller: _username,
                  )
              ),
              Container(
                  padding: EdgeInsets.all(20.0),
                  child:
                  new TextField(
                    obscureText: true,
                    decoration: new InputDecoration(
                        labelText: 'Password',
                        hintText: 'veuillez saisir votre password',
                        icon: new Icon(Icons.lock)
                    ),
                    controller: _password,
                  )
              ),
              Container(
                  padding: EdgeInsets.all(30.0),
                  child: ElevatedButton(onPressed:() {
                    print ("s");
                    Signup();
                    print ("s");
                  },
                      child: Text("SignUp"))
              )
            ],
          ),
        )
    );
  }
}
