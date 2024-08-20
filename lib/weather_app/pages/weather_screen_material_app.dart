import 'package:flutter/material.dart';
import 'package:flutter_application1/weather_app/pages/weather_screen.dart';

class WeatherScreenApp extends StatelessWidget {
  const WeatherScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: const Color.fromRGBO(255, 0, 0, 1)),
        useMaterial3: true,
      ),
      home: const WeatherScreen(),
    );
  }
}
