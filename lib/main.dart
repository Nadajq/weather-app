import 'package:flutter/material.dart';// import all widget from dart
import 'package:my_weather_app/screens/weather_app.dart';

void main() {
  runApp(const MyApp());  //run the app ,myapp as root
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  //starting point of your Flutter application.
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WeatherApp(),
    );
  }
}

