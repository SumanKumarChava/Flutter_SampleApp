import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application1/Constants/app_constants.dart';
import 'package:flutter_application1/Constants/color_constants.dart';

class CurrencyConverterCupertinopage extends StatefulWidget {
  const CurrencyConverterCupertinopage({super.key});

  @override
  State<CurrencyConverterCupertinopage> createState() =>
      _CurrencyConverterCupertinopageState();
}

class _CurrencyConverterCupertinopageState
    extends State<CurrencyConverterCupertinopage> {
  final TextEditingController _controller = TextEditingController();
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: cupertinoPageBackgroundColor,
        brightness: Brightness.dark,
        middle: Text("Currency Converter"),
        //centerTitle: true,
      ),
      child: ColoredBox(
        color: cupertinoPageBackgroundColor,
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
                      color: cupertinoTextColor,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: spaceBetweenUIElements),
                CupertinoTextField(
                  controller: _controller,
                  keyboardType: const TextInputType.numberWithOptions(
                      signed: true, decimal: true),
                  style: const TextStyle(
                    color: cupertinoTextColor,
                  ),
                ),
                const SizedBox(height: spaceBetweenUIElements),
                CupertinoButton(
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

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String getConvertedValue() {
    if (_controller.text.isEmpty) {
      return "";
    }
    return "${_controller.text} dollars = ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)} rupees";
  }
}
