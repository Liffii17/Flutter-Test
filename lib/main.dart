import 'package:f_world_time_app/pages/choose_location.dart';
import 'package:f_world_time_app/pages/home.dart';
import 'package:f_world_time_app/pages/loading.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ));
}
