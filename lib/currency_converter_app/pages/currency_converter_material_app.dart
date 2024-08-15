import 'package:flutter/material.dart';
import 'package:flutter_application1/currency_converter_app/pages/currency_converter_materialpage.dart';

class CurrencyConverterMaterialApp extends StatelessWidget {
  const CurrencyConverterMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CurrencyConverterMaterialpage());
  }
}
