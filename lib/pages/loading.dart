import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:timeclockapp/services/worldtime.dart';



class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

   void setupWorldTime() async{
     WorldTime instance  =  WorldTime(location: 'Berlin',flag: 'germany.png',url:'Europe/Berlin');
     await instance.getTime();
     Navigator.pushReplacementNamed(context,'/home',arguments: {
                'location' : instance.location,
                'flag': instance.flag,
                'time':instance.time,
                 'isDaytime': instance.isDaytime,
     });
   }

   @override
  void initState() {
     setupWorldTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue[900],
              body: Center(
                child:SpinKitFoldingCube(
                  color: Colors.white,
                  size: 100.0,
                ),
              ),
          ),
    );
  }
}
