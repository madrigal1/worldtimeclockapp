import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter =0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: Text('Choose location'),
        centerTitle: true ,
      ),
      body: Column(
        children: <Widget>[
          Text('Choose location screen'),
          RaisedButton(
            onPressed: () {
                setState(() {
                     counter++;
                });
            },
            child: Text('counter is $counter'),
          ),
        ],
      ),
    );
  }
}
