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
          child: Padding(
            padding: const EdgeInsets.all(leftAndRightPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  getConvertedValue(),
                  textDirection: TextDirection.ltr,
                  style: const TextStyle(
                      color: textColor,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: spaceBetweenUIElements),
                TextField(
                  controller: _controller,
                  keyboardType: const TextInputType.numberWithOptions(
                      signed: true, decimal: true),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    prefixIcon: Icon(Icons.currency_exchange),
                    prefixIconColor: iconColor,
                    labelText: "Enter amount in USD",
                  ),
                  style: const TextStyle(
                    color: textColor,
                  ),
                ),
                const SizedBox(height: spaceBetweenUIElements),
                ElevatedButton(
                    style: TextButton.styleFrom(
                      backgroundColor: buttonBackgroundColor,
                      foregroundColor: buttonForegroundColor,
                      minimumSize: const Size(double.infinity, 50),
                      elevation: 2,
                    ),
                    onPressed: () => {
                          setState(() {
                            if (_controller.text.isNotEmpty) {
                              result = double.parse(_controller.text) *
                                  dollarToRupeeConversionValue;
                            }
                          }),
                        },
                    child: const Text("Convert to INR")),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String getConvertedValue() {
    if (_controller.text.isEmpty) {
      return "";
    }
    return "${_controller.text} dollars = ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)} rupees";
  }
}
