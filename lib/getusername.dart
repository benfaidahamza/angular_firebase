import 'package:app1/main.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class UserInformation extends StatefulWidget
{
  @override
  _UserInformationState createState() => _UserInformationState();
}

class _UserInformationState extends State<UserInformation>
{
  final Stream<QuerySnapshot> _usersStream = FirebaseFirestore.instance.collection('Users').snapshots();
    @override
     Widget build (BuildContext context)
     {
      return StreamBuilder<QuerySnapshot>(
        stream: _usersStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
         }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
         }
        print ('saa');
        return Scaffold(
          appBar: new AppBar(
            title: new Text('Sphouse'),
          ),
          body:ListView(
          children: snapshot.data!.docs.map((DocumentSnapshot document) {
            Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
            return ListTile(
              leading: Icon(Icons.person) ,
              title: Text(data['full_name']),
              subtitle:  Text(data['num']),
              trailing: Icon(Icons.menu),
            );
          }).toList(),

           ),

        );


        },
      );
     }
}