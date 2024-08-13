import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application1/Constants/color_constants.dart';

class CurrencyConverterMaterialpage extends StatefulWidget {
  const CurrencyConverterMaterialpage({super.key});

  @override
  State<CurrencyConverterMaterialpage> createState() =>
      _CurrencyConverterMaterialpage1State();
}

class _CurrencyConverterMaterialpage1State
    extends State<CurrencyConverterMaterialpage> {
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
              const Text(
                "0",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    color: textColor,
                    fontSize: 36,
                    fontWeight: FontWeight.bold),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: TextField(
                  keyboardType: TextInputType.numberWithOptions(
                      signed: true, decimal: true),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    prefixIcon: Icon(Icons.currency_exchange),
                    prefixIconColor: iconColor,
                    //hintText: "This is hint",
                    labelText: "Enter amount",
                    //helperText: "This is a help text",
                  ),
                  style: TextStyle(
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
                          if (kDebugMode)
                            {
                              debugPrint("Hello"),
                            }
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
