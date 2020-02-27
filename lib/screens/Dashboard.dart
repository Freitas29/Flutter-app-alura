

import 'package:bytebank_sqlite/screens/contacts_list.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dashboard'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network("https://cdn.pixabay.com/photo/2020/01/31/07/27/street-4807327_960_720.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Material(
                  color: Theme.of(context).primaryColor,
                  child: InkWell(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ContactsList())
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    height: 100,
                    width: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.people, color: Colors.white,size: 32,),
                        Text('Contatos', style: TextStyle(color: Colors.white, fontSize: 16)),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        )
    );
  }
}