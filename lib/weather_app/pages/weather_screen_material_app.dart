import 'package:flutter/material.dart';
import 'package:flutter_application1/weather_app/pages/weather_screen.dart';

class WeatherScreenApp extends StatelessWidget {
  const WeatherScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: const WeatherScreen(),
    );
  }
}
