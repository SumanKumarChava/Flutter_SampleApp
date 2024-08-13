import 'package:flutter/material.dart';
import 'package:flutter_application1/Constants/app_constants.dart';
import 'package:flutter_application1/Constants/color_constants.dart';

class CurrencyConverterMaterialpage extends StatefulWidget {
  const CurrencyConverterMaterialpage({super.key});

  @override
  State<CurrencyConverterMaterialpage> createState() =>
      _CurrencyConverterMaterialpage1State();
}

class _CurrencyConverterMaterialpage1State
    extends State<CurrencyConverterMaterialpage> {
  final TextEditingController _controller = TextEditingController();
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: pageBackgroundColor,
        foregroundColor: pageForegroundColor,
        title: const Text("Currency Converter"),
        centerTitle: true,
      ),
      body: ColoredBox(
        color: pageBackgroundColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  textAlign: TextAlign.center,
                  "${_controller.text} dollars = ${result.toString()} rupees",
                  textDirection: TextDirection.ltr,
                  style: const TextStyle(
                      color: textColor,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  controller: _controller,
                  keyboardType: const TextInputType.numberWithOptions(
                      signed: true, decimal: true),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    prefixIcon: Icon(Icons.currency_exchange),
                    prefixIconColor: iconColor,
                    labelText: "Enter amount",
                  ),
                  style: const TextStyle(
                    color: textColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                    style: TextButton.styleFrom(
                      backgroundColor: buttonBackgroundColor,
                      foregroundColor: buttonForegroundColor,
                      minimumSize: const Size(double.infinity, 50),
                      elevation: 2,
                    ),
                    onPressed: () => {
                          setState(() {
                            result = double.parse(_controller.text) *
                                dollarConversionValue;
                          }),
                        },
                    child: const Text("Convert")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
