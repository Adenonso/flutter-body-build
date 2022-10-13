import 'package:flutter/material.dart';
import 'home.dart';
import 'meditation.dart';
import 'dailyexercise.dart';
import 'diet.dart';
import 'health.dart';
import 'privacy.dart';
import 'about.dart';
import 'playvideo.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/meditation': (context) => Meditation(),
      '/dailyexercise': (context) => DailyExercise(),
      '/diet': (context) => Diety(),
      '/health': (context) => Health(),
      '/privacy': (context) => Privacy(),
      '/about': (context) => About(),
      '/playvideo': (context) => PlayVideo()
    },
  ));
}
