import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text('Hasta tu Casa') ),
      body: StreamBuilder(
          stream: Firestore.instance.collection('EMPRESA').snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot){
            if(!snapshot.hasData){
              return Center(
                child: CircularProgressIndicator()
              );
            }
            List<DocumentSnapshot> docs = snapshot.data.documents;
            return ListView.builder(
              itemCount: docs.length,
              itemBuilder: (context, index){
                return ListTile(
                  title: Text(docs[index].data['nombre']),
                );
              }
            );
          },
        ),
    );
  }
}