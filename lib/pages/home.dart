import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

   Map data = {};
  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;
    String img = data['isDaytime']?'day.jpg':'night.jpg';
    return Scaffold(
        body: SafeArea(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:AssetImage('assets/$img'),
                  fit: BoxFit.cover
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16.0,150.0,16.0,0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                       FlatButton.icon(
                           onPressed: (){
                             Navigator.pushNamed(context,'/location');
                           },
                           icon: Icon(Icons.edit_location,color: Colors.white,),
                           label: Text(
                               'Edit location',
                               style: TextStyle(
                                 color:Colors.white,
                               ),
                           ),
                       ),
                    SizedBox(height:20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                            data['location'],
                            style:TextStyle(
                              fontSize: 32.0,
                              letterSpacing: 2.0,
                              color:Colors.grey[400],
//                            fontWeight: FontWeight.bold,
                            ),
                        ),
                      ],
                    ),
                    SizedBox(height:10.0),
                    Text(
                      data['time'],
                      style:TextStyle(
                        fontSize: 66.0,
                        letterSpacing: 2.0,
                        color: Colors.grey[800],
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ),
    );
  }
}
