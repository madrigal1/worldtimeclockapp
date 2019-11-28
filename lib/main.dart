import 'package:flutter/material.dart';
import 'package:timeclockapp/pages/home.dart';
import 'package:timeclockapp/pages/loading.dart';
import 'package:timeclockapp/pages/choose_location.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
   routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation(),
   },
));


