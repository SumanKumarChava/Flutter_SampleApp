import 'package:flutter/material.dart';
import 'package:flutter_application1/currency_converter_app/pages/currency_converter_cupertinopage.dart';
import 'package:flutter_application1/weather_app/pages/weather_screen.dart';
import 'currency_converter_app/pages/currency_converter_materialpage.dart';

void main() {
  runApp(const WeatherScreenApp());
}

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

class CurrencyConverterMaterialApp extends StatelessWidget {
  const CurrencyConverterMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CurrencyConverterMaterialpage());
  }
}

class CurrencyConverterCupertinoApp extends StatelessWidget {
  const CurrencyConverterCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CurrencyConverterCupertinopage());
  }
}
