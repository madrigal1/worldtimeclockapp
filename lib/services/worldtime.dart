import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:timeclockapp/services/worldtime.dart';

class WorldTime {
  String location ;
  String time;
  String flag;
  String url;
  bool isDaytime;

  WorldTime({this.location,this.flag,this.url});

  Future<void> getTime() async {

    try {
      Response res =  await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = json.decode(res.body);
      //print(data);

      //get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);
//    print(datetime);
//    print(offset);
      //create a dattime object
      DateTime now  =  DateTime.parse(datetime);
      now = now.add(Duration(hours:int.parse(offset)));

      time = DateFormat.jm().format(now);
      isDaytime = (now.hour>6 && now.hour <20)? true: false;
    } catch(e) {
       print('caught error $e');
       time ='couldn"t get time';
    }



  }

}